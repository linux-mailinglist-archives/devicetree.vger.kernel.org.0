Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7ECB854FF82
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 23:53:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236369AbiFQVxR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 17:53:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236695AbiFQVxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 17:53:12 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DB21CFF4
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 14:53:10 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d13so4895581plh.13
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 14:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0KNDd4ZUNN7nYK7H7S/lTj7vn4h7VXOeScVzYqnxA/o=;
        b=CnNKbVNO0KpRo4UJ6ZarNetmTX6wDx5FcyTRBxWZisySXxgUWu0FNC4afCT0XG+a9X
         YhZxkD1lkGNLwmCX38p6RYLeTB/plI736UyfBdXOyFRl3E5NpbvKpa3teabFOn+7XgkL
         i+UwCEWIEVQr1WeGw36rxE379HKPM5RTT6OhkdoP7jMbqKdxGrMZjGQchNJ5vYrM4rSj
         zakVlKzsOHxgARw6F3K6OxTe3eQyDRJ55+qJnF+uwIB8Grn95eYSfTDa2YEARoAPLxKM
         YL5SC+HnjEbzASFCjrcDUu+yAMebXKq8OPw7QEaHgrwrlySPyXfDV8KKJNO9fyYLuvlZ
         PRaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0KNDd4ZUNN7nYK7H7S/lTj7vn4h7VXOeScVzYqnxA/o=;
        b=gseBe7CKGlIMJCmexPY07lyOyYZyMkQXUAdmXiKOOTnWr9uw/e7zklJ7SNlGBmCHEb
         sqhmDG8JJxCeY2f4GV4A7OsW7nJBI6WiKZHrPQMEOBc5ua6jassmpuEKOVtluD64GX9Y
         1rLgaiZ0Nf92Gy4v1StUNcTBCBRUmNBbl/36Lv0MrGd/7vCRwQOZEMS4LmlE4UJTCXme
         TFZUxf0vsIpExCdRnmE6MHm2QHLqMbqquGdmJut7oMc4jXkEEW3E8Lq/sLUft1EKnvmd
         NAP+gjNzwrFnFzICb6lqCfz9wpFeDv1C9eqhfRIhDYZ7z7QtP81EE2OBaGuDT2cxMd/I
         eHug==
X-Gm-Message-State: AJIora8R988Ygy/jr4+pn0iAYT1mCL2UQ0KZWimq/yfWckepfvutVSx+
        SCtFlX1G4q34t40kSzDejiw=
X-Google-Smtp-Source: AGRyM1vZcvzqXgMTNeDzqWXbD2V8wTecm8ISxWO7I8FU921iqcT2QGelKUrR6xyVr1y7ELRfCpMeMw==
X-Received: by 2002:a17:902:b216:b0:16a:854:e641 with SMTP id t22-20020a170902b21600b0016a0854e641mr4093619plr.154.1655502789985;
        Fri, 17 Jun 2022 14:53:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id f11-20020a170902684b00b001635c9e7f77sm4017858pln.57.2022.06.17.14.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 14:53:09 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        "Ivan T . Ivanov" <iivanov@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm2711-rpi-400: Fix GPIO line names
Date:   Fri, 17 Jun 2022 14:53:07 -0700
Message-Id: <20220617215307.2651841-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220615210534.4906-1-stefan.wahren@i2se.com>
References: <20220615210534.4906-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Jun 2022 23:05:34 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The GPIO expander line names has been fixed in the vendor tree last year,
> so upstream these changes.
> 
> Fixes: 1c701accecf2 ("ARM: dts: Add Raspberry Pi 400 support")
> Reported-by: Ivan T. Ivanov <iivanov@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian
