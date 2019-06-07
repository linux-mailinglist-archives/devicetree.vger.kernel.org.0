Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D5EF33869F
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727754AbfFGI5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:14 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:33249 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727707AbfFGI5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id n9so1347961wru.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z8fhTKi+VVSku/kTsVKcccq1Qmu0W95y7iOKJ1nv6hE=;
        b=EzEoTfGdVVOJaynPLsXEMeFeVZtwTwFhyXtQrI3rKSqV8H3ZfGdTwji1udaIHaABtU
         VRi7cV8cfw10eJmJA6JkkjKO6TWHpa9XkC5CeNbYGfIHnGvg65jpgYllHCt3qau+2Y6P
         F3OJyai+Tgym6KERBDCWRrLJxSUzn6oWlzcmpaAe6+OeQkZ71p8ggDE0mCJsCoYIyyYT
         E+MkkhO4wyx5E6SbCB4M5cqmF7ZjB5JBHnnOcYxigGXAniCpYuTgGQHRCfoEUFHbsXVq
         0YtuslOjmDWk6Hb8CwiiManM+xzyc7+SdLPM624xRaiy5ccjkKeSYuu/jRZCgvtADZMU
         kknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z8fhTKi+VVSku/kTsVKcccq1Qmu0W95y7iOKJ1nv6hE=;
        b=iWmVQPmpWFDWU1b4K0Ui1lROmOkZilTYx3zOb6O9d8G8/N1GX10g/2I9NWTX9+aui7
         1NJIMPXlo73MR++vuSXp1n/a2WL9mmLngcXlFbcy7Su5gW+Y9+aDsdT+HLmqu7wkeXun
         n2+ISLQLyt8PAa+PUrZ4ypjSMW3jz4eJhqfweF+sIIKwMgKOl1cVtAALRA1TvJf1qvBz
         hsWG1Z/x0LG1NSNeQhwMNsAuS9LSkfX9qTXw34jyvIe2kcvwGcfE7jG1JqBZbRXinvUr
         x1MNBBsbAjIf0bLxYqvnL1t8mwaHiKkgYAvQ/bwUWwAtc9GeFzZy98JSMpoEW5k5jKIt
         djhA==
X-Gm-Message-State: APjAAAVs7TbiTASEIyVOIjTAqRl3Lyh6shn+cQiMjkALaRpgsmyh+jA7
        MNjU66/O6WJQTqIn/jod3aYf1Q==
X-Google-Smtp-Source: APXvYqxJuz+HGJNvMdyev3P2gMFBfXJAsHfbMi4yuIHtTZ+l1w/7//HtLuMqhwXZe+b2dMcLe2ZRiA==
X-Received: by 2002:adf:b605:: with SMTP id f5mr1981678wre.305.1559897832270;
        Fri, 07 Jun 2019 01:57:12 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.10
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:10 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 4/6] soundwire: stream: make stream name a const pointer
Date:   Fri,  7 Jun 2019 09:56:41 +0100
Message-Id: <20190607085643.932-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make stream name const pointer

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/stream.c    | 2 +-
 include/linux/soundwire/sdw.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
index b86992145799..8da1a8d2dac1 100644
--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -863,7 +863,7 @@ EXPORT_SYMBOL(sdw_release_stream);
  * sdw_alloc_stream should be called only once per stream. Typically
  * invoked from ALSA/ASoC machine/platform driver.
  */
-struct sdw_stream_runtime *sdw_alloc_stream(char *stream_name)
+struct sdw_stream_runtime *sdw_alloc_stream(const char *stream_name)
 {
 	struct sdw_stream_runtime *stream;
 
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index 80ca997e4e5d..457be7d09a4a 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -831,7 +831,7 @@ struct sdw_stream_params {
  * @m_rt_count: Count of Master runtime(s) in this stream
  */
 struct sdw_stream_runtime {
-	char *name;
+	const char *name;
 	struct sdw_stream_params params;
 	enum sdw_stream_state state;
 	enum sdw_stream_type type;
@@ -839,7 +839,7 @@ struct sdw_stream_runtime {
 	int m_rt_count;
 };
 
-struct sdw_stream_runtime *sdw_alloc_stream(char *stream_name);
+struct sdw_stream_runtime *sdw_alloc_stream(const char *stream_name);
 void sdw_release_stream(struct sdw_stream_runtime *stream);
 int sdw_stream_add_master(struct sdw_bus *bus,
 		struct sdw_stream_config *stream_config,
-- 
2.21.0

