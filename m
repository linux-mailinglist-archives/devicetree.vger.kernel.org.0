Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC680600D84
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 13:15:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiJQLPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 07:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbiJQLP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 07:15:29 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2846F5F128
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 04:15:27 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id q9so24215459ejd.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 04:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=h6TAvh2KhlPwZbZl975on9cPhNtC4Qh0FGtOTBu2EFs=;
        b=bTDHnkJsDwI8+gAJubKGMveAdQrED+uCbqQkBWVXfgfM0MVpddElLb39TxD6fZ03Go
         NO/K7iawYDyskXzCDzrX8YZLxCqJF18n5hMH3+8hHknzjFFFcnCck30rp0KWcqzi1wHj
         t3MKiv2QgcCGOIBiZ6cQP4KJUuSZOD4JHFV4ghASSiZD+6i9jaZmySj02EbP2qYP9F9q
         N0a7hUuyCPPWkpHyDt6gOI7P/gfcQLpQvz+U7f14fMVTeP60aUO4UcPt4uR2NyG3IG/b
         u+C1gRdSM3aLeZetw37rV+9RbEsSUi+gbleS3VjSZCmBFtOhiUwlIk66Z//QcN4dxY+V
         Ge8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h6TAvh2KhlPwZbZl975on9cPhNtC4Qh0FGtOTBu2EFs=;
        b=n2rldDNmmiti+Qi1hCQxBbV2uiMHIiIEFeuYQMadvXh4HOCwdNLlCv7bZLGTU6Irh9
         JWjEOPWheRyT9Nl5RYd6ZMieECGRMuEOkHCVP1iFBFDbrVwa0/yQtTiCo3IXTEqQZPPW
         PlkSumMoemYPWS10If+wHVZpecZeI4SefpeUj3+eQ+dxsPp0t8ormCOpjxumhWrjUhC5
         yhXELTyyFxP5dqOq3U6nvev42MAppbMH4aVfK9n6iDx3zX/vQTG/odyHgrQ1LN9TyE/z
         UZaObSGi3HYluotPLvbnAUCTkKWK3DLm8DUrcmsOXGlwbBVkIggUHIt/0jHKEUQuNfAZ
         VNpQ==
X-Gm-Message-State: ACrzQf1fURLsAAjGZRz/8i9F7hkcXVGXsX1ENdEfGDdJnCg7QQ1Fg+Lg
        0X7AvMnSEa5B6SH0q/15Gu/flDvJksLGCvdnkUQ=
X-Google-Smtp-Source: AMsMyM6/XLbhmNrnq0AkZadxBFxJDyiLgwzku9/wuFdotO1BJOBBpstBlX+pFQnxOXfJb7UB2g+DZPuPzV3Nvtl46CY=
X-Received: by 2002:a17:906:eecb:b0:73c:5bcb:8eb3 with SMTP id
 wu11-20020a170906eecb00b0073c5bcb8eb3mr7912480ejb.284.1666005325519; Mon, 17
 Oct 2022 04:15:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:71a:0:b0:1df:c5cd:1b43 with HTTP; Mon, 17 Oct 2022
 04:15:25 -0700 (PDT)
From:   M Cheickna Toure <metraoretk5@gmail.com>
Date:   Mon, 17 Oct 2022 12:15:25 +0100
Message-ID: <CACw7F=Zja+6hj-PRgMn552JCB2iWn8xTPJvi3mmKBwrPy2nXkA@mail.gmail.com>
Subject: Hello, Good morning
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
Good morning and how are you?
I have an important and favourable information/proposal which might
interest you to know,
let me hear from you to detail you, it's important
Sincerely,
M.Cheickna
tourecheickna@consultant.com
