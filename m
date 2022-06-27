Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A806555CBC2
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239464AbiF0R1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239688AbiF0R1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:47 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46F9012AE4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:47 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id k14so8791042plh.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OCACV4spE64Lui+hBplOlfnylBXS+1ukeZ/4huQ00Hs=;
        b=LMvliP6ZW/8S2DpUwHx1nJKW+nBEn6tIbpA8lo9J0x3xhIB/PzVbETiAlV7ACVCZmU
         NgNNz8h2iw6h8Qo+srS8IJY0hlA3OXZwoJF/K9hro9eS0mQpZ/h2gojc//R2aQmikOOi
         TAPhBIIs3TOy0kpd5h7cNxndqvjNOUDTLQH11a1b0yiEtyFp/3ub9us72jVocTilNgfD
         bMDXQoHZZ034dNVlWEO0VyYTGZJqcZKT/A1At103KZFbLp+UsNJcrZKjbre+J4ro4Iom
         tks7uex5Pn0o3PIqZ1yOp1jGKwBj226dS9YF8GUFOeh2BQ/Gsrweqe08MQgDrww+PukD
         HCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OCACV4spE64Lui+hBplOlfnylBXS+1ukeZ/4huQ00Hs=;
        b=BHXsIWL09d3/7hV7msGe+TMS+rgqNvSdonu9BcoZ8wcTipzoX2YzWcvL+D9oSdRhkb
         v4J5BToGaBVBW6LcTu49BZeicoJx2N1l9uTECfv7eEXUmORCjwvVEYhcQBcDfsWcC99Z
         hO+0rrNq0SLeBPog6Pg6iOBaKFvQtHT7tvqKyj9RpOGmIy/NoxTCYYLHwoIubcPedsWe
         aSmEpP0D5xKGzwoOsi1h+yZ0rafBxTFKILVQLg270YCMdAKwjvsr7fBsy0v3/QQcbx8Z
         QAHT19kLtxffRgPK11bVHsv17KeLeWZIzDbaMEsflZWDjcYhIAGfTTfCmuJ5iElVCul+
         JjPg==
X-Gm-Message-State: AJIora8m1q71kt2Wt8+pl3+AMq4qwNHMM16hX9+zpzXFAPfuykYD1VGG
        mAE4l03rMViua9/NLJZCVHc=
X-Google-Smtp-Source: AGRyM1tyO0sEz3WYAT77hVVcDx9KcAQvRxeVt2UVeFSq+W7L7ZRJ1t3+B9fRoUG9r9BEDwgeGn3e3Q==
X-Received: by 2002:a17:90a:3e4a:b0:1ee:fa44:7160 with SMTP id t10-20020a17090a3e4a00b001eefa447160mr382260pjm.153.1656350866705;
        Mon, 27 Jun 2022 10:27:46 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id v11-20020a1709028d8b00b0016a4f3ca2b5sm7496341plo.277.2022.06.27.10.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:46 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4 08/11] soc: bcm: bcm2835-power: Refactor ASB control
Date:   Mon, 27 Jun 2022 10:27:44 -0700
Message-Id: <20220627172744.2173201-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-9-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-9-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:16 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The functions to control the async AXI bridges are almost identical.
> So define a general function to handle it and keep the original ones as
> wrapper. This should make this driver easier to extend.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, thanks!
--
Florian
