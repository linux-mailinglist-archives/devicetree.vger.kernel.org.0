Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8282057218A
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 19:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230475AbiGLRFi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 13:05:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbiGLRFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 13:05:38 -0400
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F8D2C1FC8
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 10:05:37 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id 190so8470769iou.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 10:05:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=OkqY94hQ2MXdwJn9n/E8wY9GKpYzMuYU7Utx/QH/V1s=;
        b=Ml/Lof+TuImuODsEmuS3+aV0cSDlgagURUxDupkSJdho9cb3EwtWw2Nu2sitBcG/iU
         QVB5XujqAlbX3msi63WNIQhXccnGWHFtjnsXeEqSmbgrrBP/UWdMdnVFOi54xNpVDG1S
         mVGHEPjueZTzEvqWJ9TGnXPJLK8lElQmQHyMbfUgGbzayOCAH5BP49/O0xRjNmtcCDQr
         wrAjfUnmWMCEx4MdqpBBMrYOlflsVcWsOedrUrvKqSVODL5fyi8ONOmWyV+Ejbz4S2q+
         B1NM6b3EF25zcgIMnGbxJjpRG0rrSHrhloSxbh3//GSFVcWgkTDEn0nHmUJ5p32wA4wW
         TaJQ==
X-Gm-Message-State: AJIora/nYZfMRvFkSVjW1S2f7VivF+81PuLLJ5mSxuQ6obBEaVRF0d1z
        NXiGw+bpsmrI6o7dBvkZ/Tenz0ocsQ==
X-Google-Smtp-Source: AGRyM1tjURPoMBnumWknn8IvfiQbgA6friT3LiauGNRSX7afgXRpCabz+SyXT5zH9ZmuAvX182M/LQ==
X-Received: by 2002:a5d:9148:0:b0:672:4bfc:dcf8 with SMTP id y8-20020a5d9148000000b006724bfcdcf8mr12596652ioq.21.1657645536584;
        Tue, 12 Jul 2022 10:05:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f96-20020a0284e9000000b00331d764e5b5sm4328452jai.97.2022.07.12.10.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 10:05:36 -0700 (PDT)
Received: (nullmailer pid 2027439 invoked by uid 1000);
        Tue, 12 Jul 2022 17:05:35 -0000
Date:   Tue, 12 Jul 2022 11:05:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for
 fsl,p1021rdb-pc-cpld
Message-ID: <20220712170535.GF1823936-robh@kernel.org>
References: <20220705175450.11886-1-kabel@kernel.org>
 <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
 <20220706185602.656f883a@thinkpad>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220706185602.656f883a@thinkpad>
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

On Wed, Jul 06, 2022 at 06:56:02PM +0200, Marek Behún wrote:
> On Tue, 5 Jul 2022 14:09:36 -0600
> Rob Herring <robh+dt@kernel.org> wrote:
> 
> > Not really a simple-bus if it has registers to init/program the bus.
> 
> It doesn't.

Then what is in 'reg'? It looks the same range as 'ranges', so maybe you 
don't need 'reg'.

Rob
