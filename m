Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8B857D74C
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 01:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiGUXQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 19:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232938AbiGUXQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 19:16:20 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 477938E4EA
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:16:20 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id o5-20020a17090a3d4500b001ef76490983so2735253pjf.2
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gU99uR0QQWxROvzrLz98bXRxkP+CXicxeIxwz7Z5Q3s=;
        b=Fkh2wC/fsRUcPDxB4uVMGjMk7W034fGudVIelq77kXW/r+fwX29KlxFArB/VlRmnZY
         EbtDIFYhuDh9Ba/rr8A+PDZkxSfTb88B8raP6P5jIq0Rg6skEK9xiIGsygK9eCkGLFEX
         g51tueCsTVeIcf7a26vrucbl9/q9KLYuEsqot2cXrLHZV2JAcrlJwnj7BhmqTsvCuhcE
         KE14xKP6N8rtPwOKQWXhW2OzdGbz8kE6aKHE4MyQHQl87dvK82d6iF3ZWGB80i30PC8F
         H/1LHwAK7XDVFTVSbkkC+fVVhj6DHbFAGlydZIZOZ3OhG2yy3zBCzYZHD83+izA/jcU1
         OreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gU99uR0QQWxROvzrLz98bXRxkP+CXicxeIxwz7Z5Q3s=;
        b=WOGQN5S7ROTu6Szi+KH89JGzHpU6a3gFZdMDxUns0i7AqDrSqv1NNT4OfaAohrZQoF
         HXvz2W1aQcr0F0W8NYeki/ZBm5jRsAlaFTdx6pbZnkaIi9Q+eT08egsPEo76jW+SykHn
         qsOTrOqwH7AOTHIijS1cu7FeQpkCkF0fX6vMgYqMWBeP/65/xRD4HpL9v5xMdgyZlyve
         LIymIaMWE6vqK+RybwqqRBMi+0Lwin+mh+D7ve0y3APupKI1lHkm0Uf973O4DUN/9lbx
         CmSh+dYxgXt7TO4uIabBu0AoeGQTMpQAZm0MTCdQa6ZE/MuwCvExzffYGreOJp+Lhn0M
         lvbA==
X-Gm-Message-State: AJIora9oFeNB4r4TabMWHyQYEQt35cGODJhn6LdAmSYuAjK+8snrQGsk
        oXbX+JlRfh5li1sczkL04rU=
X-Google-Smtp-Source: AGRyM1tepu5zKkdx7jNNfdqY2CoNd3ux5DHAUGlWbfXZ8wM+NPg4fefeBD+yngIypg4C4bOVnnAtkg==
X-Received: by 2002:a17:903:2442:b0:16c:52f1:d29 with SMTP id l2-20020a170903244200b0016c52f10d29mr617996pls.46.1658445379693;
        Thu, 21 Jul 2022 16:16:19 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i134-20020a62878c000000b00527bb6fff6csm2331299pfe.119.2022.07.21.16.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 16:16:15 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 3/3] arm64: dts: broadcom: bcm4908: add Asus GT-AC5300 LEDs
Date:   Thu, 21 Jul 2022 16:16:14 -0700
Message-Id: <20220721231614.2571219-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220718132100.13277-3-zajec5@gmail.com>
References: <20220718132100.13277-1-zajec5@gmail.com> <20220718132100.13277-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Jul 2022 15:21:00 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> There are 5 software-controllable LEDs on PCB.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
