Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3D6D55C6A0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234707AbiF0R1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233236AbiF0R1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:05 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3461E12AC6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:05 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id dw10-20020a17090b094a00b001ed00a16eb4so10105865pjb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u/4fVKKNlw1uU2FOWat7QSiWm9fK+nisVi5QbOHk9YA=;
        b=cJND06zObV7KIc01UBB+gMQtGComSOJ06NLkB70zl0mVT3bAgG/nnmvIHSu9St0uRD
         XENnHvcRwpC/mJcoAq9fWgoJtF5CtiwRfOPztp8TxbBHF7VaQ62YWOmBKjPEdNEq7+O+
         zkb3B21Xh7FuwQmxlnxpqA4dGQxG2ybfGdJnlsmBA5n4RXQfOHEujYCqFaouaMeLnOWM
         Vtz+a6wsg1Pl3smLHiQz3HXEJczgXkNi8FdtbuavwwGAyFGNUtseLcExLnud22d29G1j
         TZMVUZ0JRkvX0iibVqLBi48LnG8jcgCUWlMH+x5M0eSDMFCrtLyHjDU45acG9I9nrLi9
         JMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u/4fVKKNlw1uU2FOWat7QSiWm9fK+nisVi5QbOHk9YA=;
        b=hxRFibs/Zy1NgAxYa8BGorjer+/VoRKMu51xiCVt7WR4vIjbTY8NbL5VKpLtBnzSyp
         Ki99H+rTXlzHV7VznxCXjgd9wv3DCRl9KG+RvDPnmpGR+xZ4kfWBRsIjBmGDgiGCSrol
         p6IW84XpOLsfw/V7JpLjoVBfOaZbWgfKfYGF8Dxc/eQy1TLwAlzpMBU+ywShANP0RbhF
         +6Jd2aXcHH5J21pHTLIBawigrF3FMCx52P7KNg/QJxUJJ8M8Fk3XCdvdzDH8Ya+bbZCR
         DmeHh3mxEteg9vF3Ja60GwplAQ2nVIF/0GTokrx4ICP4640biuzrH3PQFvd2NSJS0STX
         q83w==
X-Gm-Message-State: AJIora++mQkCeQ/wlubx+DBwx0tH1dm/Rj98hlgP9c86jbutIYN1+iUI
        BoIvUzbodbF4zA2FmyN5Veo=
X-Google-Smtp-Source: AGRyM1uVv3dI5LvVc/QhkmYulcNczRAwZsHkG75AMxhwwnUZN2MKYE4OrxrPv4f5AInMCZezMOvh9w==
X-Received: by 2002:a17:902:bd01:b0:16a:65a5:9761 with SMTP id p1-20020a170902bd0100b0016a65a59761mr543627pls.3.1656350824659;
        Mon, 27 Jun 2022 10:27:04 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id u22-20020a63f656000000b0040cd8f71424sm7282151pgj.69.2022.06.27.10.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:04 -0700 (PDT)
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V4 01/11] dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
Date:   Mon, 27 Jun 2022 10:27:02 -0700
Message-Id: <20220627172702.2172612-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-2-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-2-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:09 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> This converts the brcm,bcm2835-pm bindings from text to proper schema.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
