Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FD4E4CCA5F
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 01:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbiCDAEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 19:04:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbiCDAEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 19:04:13 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32F7F8A307
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 16:03:27 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id ev16-20020a17090aead000b001bc3835fea8so6546219pjb.0
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 16:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uhcD4UvaPOzmyw+JIMMImnAjRph755cmDjQJ7NEOGPo=;
        b=epc/hkkPONQlmZ2L6W9lZGK93Yj9NTYnrX9YhoRHv7uSPpZFJOeEeI9TMf6AZgGbAA
         cZa2P3MQ57+v/jQK4M0xtcY8ft/B6paTbrfvKHag90BjZm6vRk3lErU5m6EYgLLvWWHz
         xpN1iSrHPHLvZCj+mpDl3J6BtKsDOfKDHnAe6XeHUdA69lLgz7DuOacfxwMAqL8+DHzT
         ZrKMnodmNP9+HlzcbqAT1PxHtRGGpw+KYjcdf6IO6SJ2AY6a85u3snSNwc+wyb4mY08y
         15ME72/O9ucYQNfFbVngQ57XLjIVvE8DcM/hbNEWc9DPPRkROUrxDhewz7I2/CxEya6r
         0Rrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=uhcD4UvaPOzmyw+JIMMImnAjRph755cmDjQJ7NEOGPo=;
        b=3kSo5ib0eOyrN7w6LKkjoIhHbDjxUOe8fzUD4mcKJtO6m+wMhjmoymGS/JYCaHkuaG
         BuPt2AQurkByPBnh0erLPw/3dIelWS55eDZCy/RyV4OK2Lx3Xc4We4iSphaXcwtTmEab
         i2BFHb+hyqAgF+UmLfMl3BkG4hv/8dYll1pgDS6ixnFMgcqYeMtejP8O/xatPRQfOyTU
         7O/wBJ18h8K/8M7s4jnwZQ8OXRLkC3vGx822/MZznQVyfZgKhMjlPANGx+wRBFzKk0nt
         qvffc+2B7rwxep6Ol/KfUMtYOBW/GyV+6HczpniVRm3YkxkjNUvTXO38gi8go1BxmSH+
         p8Eg==
X-Gm-Message-State: AOAM531CHUQ3h0hGvz40ZLE36IpKlM/+gJaweKWhT53bzkpKWDCf2hnI
        tZ95jsPEeG1XtSs1ieEIjwOqDUXgVYDFyWSu
X-Google-Smtp-Source: ABdhPJxnSRBdeXggNjwOC3GlHeBWS9e08z+WqN7h9hP28KglwVu0Nxdfq7EsiiynMdPOJRjcp+FEGg==
X-Received: by 2002:a17:90b:4d8a:b0:1be:f5f1:89d3 with SMTP id oj10-20020a17090b4d8a00b001bef5f189d3mr8012723pjb.79.1646352206557;
        Thu, 03 Mar 2022 16:03:26 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id z8-20020aa79588000000b004e1dc67ead3sm3579070pfj.126.2022.03.03.16.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 16:03:25 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v2 0/2] dt-bindings: Convert GFX bindings to yaml
Date:   Fri,  4 Mar 2022 10:33:09 +1030
Message-Id: <20220304000311.970267-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v1: https://lore.kernel.org/all/20220302051056.678367-1-joel@jms.id.au/

This series cleans up the bindings for the ASPEED GFX unit.

The old text files are deleted for both the description under gpu, and the
placeholder one under mfd.

The mfd one existed because pinctrl for the 2500 depends on the gfx
bindings, and at the time we didn't have any support fo the gfx device,
so Andrew added the mfd ones.

The example in the pinctrl bindings is updated to prevent warnings about
missing properties that pop up when the gfx yaml bindings are added.

Joel Stanley (2):
  dt-bindings: pinctrl: aspeed: Update gfx node in example
  dt-bindings: gpu: Convert aspeed-gfx bindings to yaml

 .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
 .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
 .../devicetree/bindings/mfd/aspeed-gfx.txt    | 17 -----
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 16 +++++
 4 files changed, 85 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
 delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
 delete mode 100644 Documentation/devicetree/bindings/mfd/aspeed-gfx.txt

-- 
2.34.1

