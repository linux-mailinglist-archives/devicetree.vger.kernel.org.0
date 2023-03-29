Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91F146CD0F8
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 05:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbjC2D7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 23:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbjC2D7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 23:59:07 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327C630E9
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 20:59:06 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so14876375pjb.0
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 20:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680062345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dul1KlrBtA46iTc3gyaCXFPUr7WrWHqPcvzFasASeEY=;
        b=aNcYNzD2Yv+TTWuv1e5vkYodJIsIihMIylShdg4J4xTW1CXqXRhMx1IQVZydyLL2jb
         g+LjctlkLrUEAZmPquc7SVJeYISB7PQI3DJ0eNGbexUptVX6D47lsVL3KrxsoZornnlQ
         aJ6ImRvoXhQIh6I6MDiatUfjatku1kTe63Jt+D9ksvloTno6vr0lPscxH/KfD0WxbNHq
         0ozbWx1hTXDvHfFwZPa+I0IPh4ZkgzzsEzsrfOqF/Pzo7nFfVHYA998tpThhMuSUChXC
         6opnMuDVAYqOfbVGZqegT1exobUSYYY/+qtyabpFSvdREeIDBSgXy5cPciqz6TEcTUL3
         YBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680062345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dul1KlrBtA46iTc3gyaCXFPUr7WrWHqPcvzFasASeEY=;
        b=onIi8iXB+COnWglk4EZXyawV2yD/Pcv2bYeckPlwWCi0764e6/aQFQu0/oQlHEYMT5
         VnDYT9ijCDoBpncjETs5t9e3JhMn7fvbxgWSZrfSVAtcwZi0fb6XouxVaclsH1+nXPs0
         d0XNLYSEq7ZZEE2yZPsR71dojX0gu77j3/V+rkWhcRsx0ZdaHarob9B0X5cmSnqq/u4X
         +u2D9Ruu4+gP99PgvoclNCqV4iKpc60EbsQYgR2u7MsyWGR1T49/zmcGVCJh3nnKq7ho
         t8XRaejlpKQ2bMdt0k9Bmbv8a4KkxW8H0QX6CEyys+6DfOhGd7VcGU2fq6YWdPQhhoyo
         9j6g==
X-Gm-Message-State: AO0yUKWwQmgetDtzTySJqQjULim4KHscuCU8gQpGPvtHwyJ7J/kATkaz
        /gSpwqhKXSiYm34aw2uJ0q+9Mg==
X-Google-Smtp-Source: AK7set/Lbxss6dIB0PWdWHkTbJl6aZ51bZjCdILJWU+FOnO4dX+3ErUoUd/XkpipicnvrQWi+J6Phg==
X-Received: by 2002:a05:6a20:891d:b0:d5:2a56:15b1 with SMTP id i29-20020a056a20891d00b000d52a5615b1mr15514520pzg.5.1680062345705;
        Tue, 28 Mar 2023 20:59:05 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id o4-20020a655204000000b005133f658f1asm6509789pgp.94.2023.03.28.20.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 20:59:05 -0700 (PDT)
Date:   Wed, 29 Mar 2023 11:58:59 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Resolve MPM register space situation
Message-ID: <20230329035859.GD3554086@dragon>
References: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 28, 2023 at 12:02:51PM +0200, Konrad Dybcio wrote:
> The MPM (and some other things, irrelevant to this patchset) resides
> (as far as the ARM cores are concerned, anyway) in a MMIO-mapped region
> that's a portion of the RPM (low-power management core)'s RAM, known
> as the RPM Message RAM. Representing this relation in the Device Tree
> creates some challenges, as one would either have to treat a memory
> region as a bus, map nodes in a way such that their reg-s would be
> overlapping, or supply the nodes with a slice of that region.
> 
> This series implements the third option, by adding a qcom,rpm-msg-ram
> property, which has been used for some drivers poking into this region
> before. Bindings ABI compatibility is preserved through keeping the
> "normal" (a.k.a read the reg property and map that region) way of
> passing the register space.
> 
> Example representation with this patchset:
> 
> / {
> 	[...]
> 
> 	mpm: interrupt-controller {
> 		compatible = "qcom,mpm";
> 		qcom,rpm-msg-ram = <&apss_mpm>;
> 		[...]
> 	};
> 
> 	[...]
> 
> 	soc: soc@0 {
> 		[...]
> 
> 		rpm_msg_ram: sram@45f0000 {
> 			compatible = "qcom,rpm-msg-ram", "mmio-sram";
> 			reg = <0 0x045f0000 0 0x7000>;
> 			#address-cells = <1>;
> 			#size-cells = <1>;
> 			ranges = <0 0x0 0x045f0000 0x7000>;
> 
> 			apss_mpm: sram@1b8 {
> 				reg = <0x1b8 0x48>;

Per "vMPM register map" in the driver, the slice size should be 0x44
instead of 0x48.  Is there one register missing from the driver
comment?

PS. It seems the "n" formula in the driver comment should be corrected
as below.

  n = DIV_ROUND_UP(pin_cnt, 32) - 1

Shawn

> 			};
> 		};
> 	};
> };
