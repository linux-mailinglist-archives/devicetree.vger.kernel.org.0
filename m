Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46F0C4AFF14
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 22:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233052AbiBIVPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 16:15:34 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:40724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232999AbiBIVPc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 16:15:32 -0500
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791CEC094C9C
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 13:15:35 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id ay7so3859863oib.8
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 13:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BpjegsvG0ViGS/YJQpJJgxUJraZoIKwgkiFg7EhU/PM=;
        b=OQlTxZUAtQtCGYlVOy9eAPUwnX431aQgl/cH2tvG+zGoSa2MMGJ6CvmES8pDQpIHwL
         Blou2VmCIvy14EfR0TtkXUIwIlxul7E3mYqxJVqXaFT3iH8aAnvhurDlbxYDxURHzo9i
         aoII7NgykXXiDTnpy89U726wNrEQCuyBKxSUG/Mx1PwTfkbq/ecqT30553cMNCmYMnNY
         i2Hvq6gkSZ7D1f10yURX512LIg2UmXF6inSZHz6viHHYIv9FvMXyBe+9oq+288PRMcuW
         D24ck9+YwFcLuseSreB+RQRh7YrlOy0MSuTwALC3ed6DYBG++dJcN/NuaFMvOCqTO4ku
         b4xg==
X-Gm-Message-State: AOAM531Rj2Qd4VcTl3mCEytuqADz4RvdXNoL5Er4nPbhEtBZWVo/VZ3N
        nKU3bJsI0Lu5sz+GaO3WnQ==
X-Google-Smtp-Source: ABdhPJwB2UUfATjDERHGwsndDCHW4vNmmG1kS7Rg5f1Ci9hL0yVtNga4Tq2cqxsi6DmDCFi8DGjlMw==
X-Received: by 2002:a05:6808:1152:: with SMTP id u18mr1896564oiu.316.1644441334806;
        Wed, 09 Feb 2022 13:15:34 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id a10sm6919713otb.58.2022.02.09.13.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 13:15:33 -0800 (PST)
Received: (nullmailer pid 927455 invoked by uid 1000);
        Wed, 09 Feb 2022 21:15:32 -0000
Date:   Wed, 9 Feb 2022 15:15:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     Mr.Bossman075@gmail.com, andre.przywara@arm.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, mripard@kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 2/4] dt-bindings: mmc: sunxi: Add Allwinner F1c100s
 compatibles
Message-ID: <YgQu9H0UgCyUPvI+@robh.at.kernel.org>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
 <20220130220325.1983918-2-Mr.Bossman075@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220130220325.1983918-2-Mr.Bossman075@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Jan 2022 17:03:23 -0500, Jesse Taube wrote:
> Add binding for F1c100s's mmc controller.
> 
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> ---
> V1 -> V2:
> * New commit
> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
