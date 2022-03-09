Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 856934D3443
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 17:25:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235607AbiCIQYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 11:24:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238180AbiCIQVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 11:21:31 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37770A9959
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 08:20:06 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id yy13so6252002ejb.2
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 08:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KFt0Aj3/gXHUCz4dElk3edicceyKwBTKcXLoDwythKs=;
        b=maYSac5LFltun5TECyK2+iW1GicBXblo3N+eCbQ71y6u4ZTX3IdaLSSKVJB/B3/mq7
         JbOp7gub1iLVw+tlFmTc20n+PSkUPMF10ihVXvwdRVi50n0mAxjPtXu5CmQlm9sPUlUq
         u9sLYOJaf2YdfqwUmSx89mHv13iB18M6ZncRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KFt0Aj3/gXHUCz4dElk3edicceyKwBTKcXLoDwythKs=;
        b=KYOW1tAvUkBkxrE0DTPAx3h7P/DRxaWUobG2dgwqJTKuM6Hnlf+6692SdMSSGAg5MA
         5mxCZflMMZpmi1ibGgi8lYuEYJiPWTp0BvFkhfSlfYLVsZYxw1jF3f3EzJW981ZlmFtn
         /SkSYe4fI9fAdaCFsSmIEuk3mdB/Jk9C5skxMcEn7yNZapzkru/2B6wSpEcJQoDmDbNK
         leXd4bg39N1n2ledQulORxsy2uNYoiH7KqxgAIZERwC5P6BTF/lK4ccwJC04gq0mBMVD
         RIB0yTb/SWaTTxDaIWeE/0SEqG+TSmlE6IiCqEj0kglO+aSfjcoZo+FY1Vxpyw7ozzEK
         Zd/A==
X-Gm-Message-State: AOAM533TOUZdOxNFIGTRrKkaJIDtAPlYbXVG5kCir/pw3i7f5fvzPtRo
        Zqew2DkeatvVdTGwVIvDjsfuUw==
X-Google-Smtp-Source: ABdhPJwoU17aJK87cXY7MAydzPrTR7U7DxpgEd6/5Obnwt2yvL9CBI692ptxG+lDuT191ihDGeCREA==
X-Received: by 2002:a17:906:b56:b0:6da:f8d8:aaef with SMTP id v22-20020a1709060b5600b006daf8d8aaefmr485003ejg.67.1646842804783;
        Wed, 09 Mar 2022 08:20:04 -0800 (PST)
Received: from carbon (78-83-68-78.spectrumnet.bg. [78.83.68.78])
        by smtp.gmail.com with ESMTPSA id h17-20020a05640250d100b004162ee0a7aesm989889edb.38.2022.03.09.08.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 08:20:04 -0800 (PST)
Date:   Wed, 9 Mar 2022 18:20:03 +0200
From:   Petko Manolov <petko.manolov@konsulko.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-media@vger.kernel.org, sakari.ailus@iki.fi,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/2] dt-bindings: media: add ovti,ovm6211 bindings
Message-ID: <YijTs+wlpGRuP5hJ@carbon>
References: <20220309102215.891001-1-petko.manolov@konsulko.com>
 <20220309102215.891001-3-petko.manolov@konsulko.com>
 <20220309135904.GA2790178@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220309135904.GA2790178@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-03-09 06:59:04, Rob Herring wrote:
> On Wed, Mar 09, 2022 at 12:22:15PM +0200, Petko Manolov wrote:
> > Omnivision OVM6211 MIPI CSI-2 sensor bindings.
> > 
> > Signed-off-by: Petko Manolov <petko.manolov@konsulko.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ovm6211.txt | 49 +++++++++++++++++++
> 
> Not sure how you got to v5 already, but bindings must be in DT schema format
> now.

Easy, the bindings got included to the patch in v5.  Looks like it's going to be
yaml all the way... :)


		Petko
