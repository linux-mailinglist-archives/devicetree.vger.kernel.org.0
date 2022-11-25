Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50C58638D8A
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 16:37:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiKYPhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 10:37:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiKYPhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 10:37:31 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06306BB9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:37:28 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id t10so5614773ljj.0
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Cy7rH5pyJVnH/+6lKqlr5TaljKJablOrGP9ii/rIiII=;
        b=pDHesMp1btaqc/TUfkbEP1d2tiYcYMBbqO2TfVSWFgK3WXApD3WEeAyuGAx57+uO3X
         Otbl+HR83ZPO5r4I/mH1imRhToX5EdNfMupigVdZkRaHY4gRD8L2aIafExiNQw4AK2Vq
         dLECruzCU04SKJiT3ul92Mvy5TjFxR5i/VQ2X3/KAiXftx8aePW4e5wL/TuxZyiwZ+GH
         EiUY+5j8iNIRJNYIloZFHV1R3z8nt+Hbikzp66ZgG8U1M35lS0NhoIeVTUfL59I/Zuz3
         wvG0nDdlnQk/dPE9hQBDbsSqXW4wec6gFzl9uHhBUClT9QpdWwHaitdibDz6jEXORFsv
         Kgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cy7rH5pyJVnH/+6lKqlr5TaljKJablOrGP9ii/rIiII=;
        b=Y47L3eJPixCQJ8OfVdGyrFKFdMNjVcEgF1OqeeiqmB0uHQKdlvg1OcTuH85QrGvf3n
         HmBw0+Z3uJTEsG3ODqxv+gulC5NoOVJrku6yoHD3tBaRecEVYw6pQL3g6V8Kt9bae3Jj
         FEA1bF/Bq88e4VXF5oHeTfKhygtaOrrMgxR9ahdc9IY9P2rgXMcoGqbrmuuepWS8ByBB
         vpr4tmv9rIUA37MfXOdprYx5qGc/V9SHz4PcJUAEZrAx0Vu+se8/o3gd8WuSpTn4dD0G
         XJjqnb23wsV4eq6bU82hUikHxs/iuBnt9vY1Ih7EFXJrcxRVOYC8Hi9RDe1Cce80Srdh
         0QyQ==
X-Gm-Message-State: ANoB5pkp5opbFwaNMmwvmd/fZsUwCx/DjwtUuzFY7Pb7Hgz9ELqZa/Ij
        I9Mehy+3dzb2+pflNVq7geumxw==
X-Google-Smtp-Source: AA0mqf5K+x97VLQnH3hlsKXfJmEoZzglbn0gl1ASwDslzHBNOHw8t7x5/ZFMQCaxMBNHh0HFbx93NQ==
X-Received: by 2002:a2e:3c18:0:b0:279:8173:4396 with SMTP id j24-20020a2e3c18000000b0027981734396mr3072327lja.345.1669390646369;
        Fri, 25 Nov 2022 07:37:26 -0800 (PST)
Received: from melexis.com ([91.192.183.26])
        by smtp.gmail.com with ESMTPSA id q21-20020a05651232b500b004ac980a1ba1sm567760lfe.24.2022.11.25.07.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 07:37:25 -0800 (PST)
Date:   Fri, 25 Nov 2022 17:37:22 +0200
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-media@vger.kernel.org, Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>
Subject: Re: [PATCH v3 7/8] media: dt-bindings: media: i2c: Add mlx7502x
 camera sensor
Message-ID: <Y4DhMvjLNertB2xp@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
 <343c0ab708ab35ec101bcefbe2fda5c15d5e6bfd.1669381013.git.vkh@melexis.com>
 <756daf8d-9d4e-12f7-4d3a-e9da8480ed6a@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <756daf8d-9d4e-12f7-4d3a-e9da8480ed6a@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 25, 2022 at 04:19:16PM +0100, Krzysztof Kozlowski wrote:
> On 25/11/2022 14:34, Volodymyr Kharuk wrote:
> > Add device tree binding of the mlx7502x and update MAINTAINERS
> > 
> > Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
> > ---
> >  .../bindings/media/i2c/melexis,mlx7502x.yaml  | 126 ++++++++++++++++++
> 
> I mentioned you have wrong subject prefix. Only one "media" in the
> subject prefix is needed, so:
> "media: dt-bindings: Add melexis,mlx7502x camera sensor"
Ah, I missed it. Thanks for review.
> 
> >  MAINTAINERS                                   |   1 +
> >  2 files changed, 127 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
> > 
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

-- 
--
Volodymyr Kharuk
Embedded Software Engineer
Melexis-Ukraine
Mykhaila Kotel'nykova St, 4, Kyiv
Mobile phone: +38 050 346 5527
www.melexis.com
---
The contents of this e-mail are CONFIDENTIAL AND PROPRIETARY. Please read
our disclaimer at http://www.melexis.com/mailpolicy

