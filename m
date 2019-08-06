Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C876839A6
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 21:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725973AbfHFT07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 15:26:59 -0400
Received: from mail-vs1-f74.google.com ([209.85.217.74]:36794 "EHLO
        mail-vs1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbfHFT07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 15:26:59 -0400
Received: by mail-vs1-f74.google.com with SMTP id j77so22372954vsd.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 12:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=D3pdZ1hpsDBBSSu9uYSfSRCE32NuFY9z8QfNXGGTrto=;
        b=LHk9KRvN4gVYqdpbzH/h6AXDTltFI1mcEX8tIfDeaaz7Pp/s1h6kD5/luThnNVkRXo
         RFprVeqH+KMHp8FIm6SlOg6lN817W54y8MNPmJ2PPAZSmanotW9ORWMMT7bLPtY/Ogw1
         l0/wUU+j2GL2oPXGJQAK/smUR/uZAZ8uvIXwSeGYNr+5rbJaOwhWQfTDWRAIrdOnXsRC
         oDnLW2t6xqw9H4TGRe9jA7NjyIzr621ALRjr8ny9y6N5BzR8aiT7q7zykTyhfszTICrY
         3bbTdssMsUOKUCJiIAMDjpzv7t5+paMDYudQmEGzotuahcrwMAyB3nMw7QmMjnIOz+hB
         aTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=D3pdZ1hpsDBBSSu9uYSfSRCE32NuFY9z8QfNXGGTrto=;
        b=gc2TsWM23cKOOiJyhvayGPW6EImgoU9prweH8Npqa6ColSK88ZFr7Yy+hoXpj9V5sg
         fEXGHAzq5KTf4Sz+Jk48NDwrsUokt1VGYrCDoH9m72k5XqZ9/+Ih9MlKVVtjQEsqAkDn
         QzsEFEq/RUR/htjCNGb8CBWB6Ldd4bbYaoolpmrqHS22n8+cfzbqhyKxbF4HTOgulH2J
         DjfvOcDFFkmR6g36cmwV/PEsVIhEanOocDWSZlxKlObbxtSF343USzsuyiCyhxhOL/ux
         6N7plLZfw0eQl0m6E9TtAiNXbkY9VY/xBiVljXKT4nqPhQXABb7fuTwciTJRZlAx9uO1
         KxwQ==
X-Gm-Message-State: APjAAAW7GCXRkUBOJoK55fQKJZh+nf844rLz+YUHTZceo3WKw9CUyL1K
        z/4SL1qJ74+agC3YLWQNVl1PTVkem5NDLLI=
X-Google-Smtp-Source: APXvYqxGDu8U5booa1l1NNHse+Ok3XBT02Jwb4vocS7V3EHzsgihODf2xQqyNWYaIEk7cAN9qJAShbo0brkax0k=
X-Received: by 2002:ab0:6503:: with SMTP id w3mr3177460uam.99.1565119618579;
 Tue, 06 Aug 2019 12:26:58 -0700 (PDT)
Date:   Tue,  6 Aug 2019 12:26:53 -0700
Message-Id: <20190806192654.138605-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH 1/2] of/platform: Fix fn definitons for of_link_is_valid() and of_link_property()
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        kernel-team@android.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

of_link_is_valid() can be static since it's not used anywhere else.

of_link_property() return type should have been int instead of bool.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 21838226d68a..f68de5c4aeff 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -506,7 +506,7 @@ int of_platform_default_populate(struct device_node *root,
 }
 EXPORT_SYMBOL_GPL(of_platform_default_populate);
 
-bool of_link_is_valid(struct device_node *con, struct device_node *sup)
+static bool of_link_is_valid(struct device_node *con, struct device_node *sup)
 {
 	of_node_get(sup);
 	/*
@@ -625,7 +625,7 @@ static const struct supplier_bindings bindings[] = {
 	{ },
 };
 
-static bool of_link_property(struct device *dev, struct device_node *con_np,
+static int of_link_property(struct device *dev, struct device_node *con_np,
 			     const char *prop)
 {
 	struct device_node *phandle;
-- 
2.22.0.770.g0f2c4a37fd-goog

