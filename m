Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 482F761F191
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 12:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbiKGLLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 06:11:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231734AbiKGLLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 06:11:00 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF28E1ADB4
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 03:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667819358;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=n8Cl/06MPGSPm5RCcGRmqHy2+qFfaHoF23PzrGUHbl0=;
        b=eLQZ9xD/LU2cyssVBTuZzR4fiDYCGpFaUj8vAH9vMXtXIvoQT85cGjzgWBJ4RJt2Y0vaU3
        PViwhXS4gdcThvgt/tSpYDglPuBlN97+TSKehraaEtrBM1MDMxpzWxQOQDN7CXeqWimlm2
        SRLgk7jHdOlcsaS0boMHBQNeswyQDWs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-331-tKTzwpEPPQ2KSkixkH3Q_w-1; Mon, 07 Nov 2022 06:09:14 -0500
X-MC-Unique: tKTzwpEPPQ2KSkixkH3Q_w-1
Received: by mail-qk1-f197.google.com with SMTP id bp10-20020a05620a458a00b006fa29f253dcso9777568qkb.11
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 03:09:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8Cl/06MPGSPm5RCcGRmqHy2+qFfaHoF23PzrGUHbl0=;
        b=4pmBBs0/HDrWZKwrMG0Aog3E3MUUlJrkiIYP7MVgT95wiSBkRyEg5dMRWtNGo7kHp/
         Kknuv7s0Fnoxvty1qpVivicOpixaCKDxW/m5tI5o7vTyeppifNQhFQ14D4WdKU1cq3nB
         rtucJ9TXNBisFdQAeK8t/zTcLg0+n7Yifr/GKJwPH9m9qXwbGrj0bMcJ1UtzM9GZ3VFH
         PyAJgODzc+xD53RtVOWu3KYvKURXqqSC/UF4HTUWDV6BVyQC1MuK5Pktmv56aojPTS1y
         6h6SWFd421WPko5FbxAXZlIok8jbAzSZAStAAG+4KCSIbLvXEj2Seq6nQjrRr6bvde+X
         N7Kw==
X-Gm-Message-State: ACrzQf2YDqlZSpryDLEQAs/lqq+C/AyfqN/G8tGX0gqhoZKCqRZ1cb3T
        SUH3JCdRAGMvNQG4l5YA4wgewbyQSHovAs5+NV4Tv7S5dDx08ZOYLWK2lAXzknV93xedwSxbbq3
        iCYpuF0jX1Y3LBokzW9OeSA==
X-Received: by 2002:a05:6214:b6b:b0:4bb:9fea:f53a with SMTP id ey11-20020a0562140b6b00b004bb9feaf53amr44142076qvb.7.1667819354531;
        Mon, 07 Nov 2022 03:09:14 -0800 (PST)
X-Google-Smtp-Source: AMsMyM4P+NUQULfed2HggHKoSQY6kh/nJD0vPq50SemRAN1ssl+3+ZctfwFB6qqd/+YR3SsRBOdEJw==
X-Received: by 2002:a05:6214:b6b:b0:4bb:9fea:f53a with SMTP id ey11-20020a0562140b6b00b004bb9feaf53amr44142058qvb.7.1667819354338;
        Mon, 07 Nov 2022 03:09:14 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id c8-20020a05620a134800b006ecb9dfdd15sm6481524qkl.92.2022.11.07.03.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 03:09:13 -0800 (PST)
Date:   Mon, 7 Nov 2022 06:09:12 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc8280xp: fix UFS reference clocks
Message-ID: <Y2jnWJ0FI6Fmy8/O@x1>
References: <20221104092045.17410-1-johan+linaro@kernel.org>
 <20221104092045.17410-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104092045.17410-2-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 04, 2022 at 10:20:44AM +0100, Johan Hovold wrote:
> There are three UFS reference clocks on SC8280XP which are used as
> follows:
> 
>  - The GCC_UFS_REF_CLKREF_CLK clock is fed to any UFS device connected
>    to either controller.
> 
>  - The GCC_UFS_1_CARD_CLKREF_CLK and GCC_UFS_CARD_CLKREF_CLK clocks
>    provide reference clocks to the two PHYs.
> 
> Note that this depends on first updating the clock driver to reflect
> that all three clocks are sourced from CXO. Specifically, the UFS
> controller driver expects the device reference clock to have a valid
> frequency:
> 
> 	ufshcd-qcom 1d84000.ufs: invalid ref_clk setting = 0
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Fixes: 8d6b458ce6e9 ("arm64: dts: qcom: sc8280xp: fix ufs_card_phy ref clock")
> Fixes: f3aa975e230e ("arm64: dts: qcom: sc8280xp: correct ref clock for ufs_mem_phy")
> Link: https://lore.kernel.org/lkml/Y2OEjNAPXg5BfOxH@hovoldconsulting.com/
> Cc: stable@vger.kernel.org	# 5.20
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Brian Masney <bmasney@redhat.com>

Note that there was no 5.20 kernel; that should be 6.0. Bjorn should be
able to fix this up during merge.

https://en.wikipedia.org/wiki/Linux_kernel_version_history

