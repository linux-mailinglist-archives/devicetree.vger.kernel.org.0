Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FDC54EC518
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344502AbiC3NDA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:03:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345594AbiC3NCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:02:51 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBFC116CE69
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:01:05 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r13so29146348wrr.9
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wnOmQjNwVPDwPyCO2q0cslFMDHGN6satiu6CtfVkU0k=;
        b=LEvTPIJvpD4ZoOneCWO7MUfc1ItWcx+NXa53OIwM6GR38uzRGYsQYFRFd83gY8RsUf
         ugNAf6IwrTV/lPCBjCO1+gcqbaV5HdpR3dA9ijrmStblRrHqbsxvZaLNbrQ1wKVb3sme
         zHPtq5/dO12l7FIa1o0He8BnGoWIsXGVJUpynTD2PBJUxxAKlR84A4VII++U9wulZtXi
         hZXhL6TP/TrTzvBbyaqXwbJr2c5VfTURPY2yJSaqwXxZpHxrV6/PA1Tc9gXAEkkAmwc5
         yI/NkR9tBEpS4czCuun2u03YCF46eIoIcUBTZ0+JOE+ofKxODX1tQu51TfwKWrOKQOTn
         6yAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wnOmQjNwVPDwPyCO2q0cslFMDHGN6satiu6CtfVkU0k=;
        b=qxyfnqPyemq1wwOei8U+NgPSju6+HKrvWrzSlH9ICT5a3dYNNAtJTqjqJaLvTbk58C
         v6b/PJzoUwxeMIEDC0SamZxk1MMMeXElroczeLXb5RWp3tdQdMvliowP7I/y7HYZw9en
         lN++JLwYQgAgRG+P1yUkOhAMi15mozJ0CgVqoCEqhlGZfrimaq0UoA9qmiyDSOv0mxtW
         0tvTuXyH3wK+qvIIh31tqZWvtsmcca+dC0qz8IiEbJBP5te7VtMcxMbaBVXl0cHwFdoV
         JfOYR98zC87/i/JC6Qroy3BMvrpQiDZTl/51hROjzu5hqKTyggxrOnU6+57MSeaTNjQN
         nVlg==
X-Gm-Message-State: AOAM530+cCY1le/FqmRbYjcOJNQlkwhMeQY9+s95j590F7f0cCmca4c0
        GEwc+QwJHvkR6glBzIEmQE/5yQ==
X-Google-Smtp-Source: ABdhPJzK0pZ3hxPVmsJAGl+X0ln5mNZ5ucAc+qIN1MF8Yp2Rxy/o/QRd/KRDNrnOroM3/KtUWzrgNw==
X-Received: by 2002:adf:90e9:0:b0:204:2ee:7d5 with SMTP id i96-20020adf90e9000000b0020402ee07d5mr35594009wri.536.1648645264384;
        Wed, 30 Mar 2022 06:01:04 -0700 (PDT)
Received: from arch-thunder (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id e8-20020a05600c2dc800b0038d05f2b34dsm5461643wmh.2.2022.03.30.06.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 06:01:03 -0700 (PDT)
Date:   Wed, 30 Mar 2022 14:01:00 +0100
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Message-ID: <20220330130100.njizg3u3h6tw3j6g@arch-thunder>
References: <20220329213519.801033-1-rui.silva@linaro.org>
 <20220329213519.801033-2-rui.silva@linaro.org>
 <YkOKzeURVvotgAHq@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YkOKzeURVvotgAHq@lunn.ch>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,
Many thanks for the review.

On Wed, Mar 30, 2022 at 12:40:13AM +0200, Andrew Lunn wrote:
> On Tue, Mar 29, 2022 at 10:35:17PM +0100, Rui Miguel Silva wrote:
> > Convert the smsc lan91c9x and lan91c1xx controller device tree
> > bindings documentation to json-schema.
> > 
> > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > ---
> >  .../bindings/net/smsc,lan91c111.yaml          | 59 +++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> 
> Hi Rui
> 
> It is normal to also remove the contents of the .txt file and add a
> single line that points to the .yaml file.

yeah, I will delete txt file instead, I forgot to do it in this
commit though.

Cheers,
  Rui

> 
>        Andrew
