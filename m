Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A284F6621
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238311AbiDFQ7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 12:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238352AbiDFQ7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 12:59:16 -0400
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA5D4E7F45
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 07:22:40 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-de3eda6b5dso3106381fac.0
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 07:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=upTPlbVTcoTdM5tQWTg7uD8+/IP0VcvCWUQLr9HKbxM=;
        b=Ph1vBUXRYtRsvC2oKxNmpvI2sL8M4LHuuL4fFCoO9XqBpUrgi16cUWX4XgweiiwcIx
         IIU01F5uIxj+AxBl1Ek7dtTGPd6zq4JJDwHIk21eJ2tv02y09CSGCpepySJf+Yu0pYOB
         1G0Ef0LgBwQP66thaXvLocRpNl2WSb/YGEqR3X98KxsiTXvhCNx5we+01Qhhr/jmpvMm
         +/+ahFZ+BW2SaNSJivoN4R1yBz996Vf1bAt/3GOAUEvl5khHzzjB4u8xTeTzb7bkWHh4
         h4cDgQ64WkZtP9yYCi/ZoS0PPl2g375ouQdY+9uTm5CzhxVlOBOvtGtY9/5pluIcZ4pD
         ZxlQ==
X-Gm-Message-State: AOAM532sBpv/USyhtTFXb1kXBFCg1VYaeV2rp5CxGoidjz0+BHreHVKm
        w2l1TMO5Wrzs9pu20eH+wg==
X-Google-Smtp-Source: ABdhPJz801q89hxI79GF6DWkpTX3UDIx7GJZaV661AWppiUek8v/hqfiKWFiWpj87fhVQ/EWRwRVqg==
X-Received: by 2002:a05:6871:793:b0:db:360c:7f5e with SMTP id o19-20020a056871079300b000db360c7f5emr3985800oap.218.1649254960113;
        Wed, 06 Apr 2022 07:22:40 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g18-20020a9d6c52000000b005af7c7cb702sm6734042otq.34.2022.04.06.07.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 07:22:39 -0700 (PDT)
Received: (nullmailer pid 2191905 invoked by uid 1000);
        Wed, 06 Apr 2022 14:22:38 -0000
Date:   Wed, 6 Apr 2022 09:22:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rui Miguel Silva <rui.silva@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: arm: add corstone1000 device tree
Message-ID: <Yk2iLpsccuxFb5E1@robh.at.kernel.org>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
 <20220330131053.1122502-4-rui.silva@linaro.org>
 <20220331104854.sffey43mlxlg343o@bogus>
 <20220331112414.cediztrnxaoihdgq@arch-thunder>
 <20220401105322.k7ob3w2t5stuhhay@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220401105322.k7ob3w2t5stuhhay@bogus>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 11:53:22AM +0100, Sudeep Holla wrote:
> On Thu, Mar 31, 2022 at 12:24:14PM +0100, Rui Miguel Silva wrote:
> > On Thu, Mar 31, 2022 at 11:48:54AM +0100, Sudeep Holla wrote:
> > > On Wed, Mar 30, 2022 at 02:10:53PM +0100, Rui Miguel Silva wrote:
> > > > +
> > > > +		mhu_hse1: mailbox@1b820000 {
> > > > +			compatible = "arm,mhuv2-tx", "arm,primecell";
> > > > +			reg = <0x1b820000 0x1000>;
> > > > +			clocks = <&refclk100mhz>;
> > > > +			clock-names = "apb_pclk";
> > > > +			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > > > +			#mbox-cells = <2>;
> > > > +			arm,mhuv2-protocols = <0 0>;
> > > > +			secure-status = "okay";     /* secure-world-only */
> > > 
> > > Please drop the above. Though I see it is in the binding, no one uses
> > > it in the kernel and I prefer not to have this.
> > 
> > the secure partitions in secure world use this mailbox to
> > doorbell the secure enclave so, after talking with Rob he suggested to
> > use this bindings to make this clear. So, I will keep this ones.
> > 
> Hi Rob,
> 
> Since this is first user of this binding(which is there for a while, but
> no users in the kernel code base), are you fine with this ? 

The general rule is 'don't put status in examples'. I think the same 
should apply here as that is outside the scope of the binding.

Rob
