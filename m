Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BAEE71A0B2
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 17:54:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727255AbfEJPxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 11:53:54 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:43972 "EHLO
        mail-wr1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727502AbfEJPxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 11:53:32 -0400
Received: by mail-wr1-f46.google.com with SMTP id r4so8448599wro.10
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 08:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WmYcNnwfKVscZCmwdjK6jhJ9WBHb6BXwy0H5GLHZ/VU=;
        b=C0hRRVJkS6zB+gVPwbTFLoQ/yrTJe0AdMUE73ja1XnESm9WmkHP+J9t1kL18F89+Ar
         Egg+kK9TylG8JTm6oqDQCeiK74nWu62vsP4nIgEBc8KBnTx6Cf8K8cgtOQEyVzIVKj21
         6wnLy3HMAlGd7LjVvWStoqLs91EkMu4NqovsGbMkzOIo+ayRm8P3sVzd52760Q3bQ8Kv
         NktQEj+r/gGlKKS/J2qED2hxbwxNRj/NjVGpeZxBbtTmR0nZxmetlLSK8lIbKSa9epcP
         DSog5ymi+1RkFJTHrMV2sRa/tkMuTeaU3G/LXcDIoQ/5nEsU5Cgcr9F+RoM3IXjR52Pp
         H/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WmYcNnwfKVscZCmwdjK6jhJ9WBHb6BXwy0H5GLHZ/VU=;
        b=cS3m/l5En/h84TP3XB1lNpjvJx/yM72GdWwjLgDQwX+lA0nXXyH1bFsY52vzqHoop4
         JKOhGEFgBjXeraCb9oYh8ikEDioP7RZ5yP8DQRXRLuoAXouvLfuQ9PnUWic+Q0D7PHrY
         14ekbuWIlK7uOAOe5Tq711bJAhAos1+0pdgheeuU7myGcWoIi7VNSRC/wCiMGuXm5krq
         KOqGpaypv4d7HhhLBh7so6ch9y+01tbuAF2Lxn9zlTvdqD6dhcynbGySfsLp1L7WQacz
         OHhYIspbPNjeOcXKCtPvsBi1SPJ18iqERnEO8SajtfTm6msvk23lrlyXLmzmLDq5qrGi
         cmWA==
X-Gm-Message-State: APjAAAV0Fcw/JhO2HIJJvcx5O6pVPvrsmAJkSJ8VrV7yBDeuHQpc1gfd
        3/xR4xDFKxkjWWE4iRhbwqX5xw==
X-Google-Smtp-Source: APXvYqxG++tIt5+P1saVu6V+j0sm+4hTQruPueDBJA4MZeuRgE44zFdvgStVURuvnv+y7381WMKuKA==
X-Received: by 2002:adf:e5cc:: with SMTP id a12mr8663276wrn.78.1557503610457;
        Fri, 10 May 2019 08:53:30 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id u14sm5333860wrn.30.2019.05.10.08.53.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 08:53:29 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: g12a board node order
Date:   Fri, 10 May 2019 17:53:25 +0200
Message-Id: <20190510155327.5759-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The order of the nodes in the u200 and sei510 is bit fancy.
Order nodes by address, then node name, then aliases.

This makes rebasing is little less painful

Jerome Brunet (2):
  arm64: dts: meson: sei510: consistently order nodes
  arm64: dts: meson: u200: consistently order nodes

 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 92 +++++++++----------
 .../boot/dts/amlogic/meson-g12a-u200.dts      | 50 +++++-----
 2 files changed, 72 insertions(+), 70 deletions(-)

-- 
2.20.1

