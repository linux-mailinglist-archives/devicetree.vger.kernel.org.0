Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0026C61A199
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 20:54:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiKDTyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 15:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiKDTyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 15:54:45 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F40942F61
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 12:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667591628;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=p1Y13hIxSrsibCYbBKTOvWFt6HnV4ZBbfk9Epx0sXBM=;
        b=iP3geS4bhKdQA0IR+N4/rXFInf09xDI+IYkPznyiceCWMOejScFy1ruIfjnuXrxQT2hrrK
        KTZjJszz6VUFwkhTs4YqRR/UEnffKHf89pTx8zM7v+CiJiYhmLfrrGGJiRatHuQFXCcFkD
        1sfJWZdkETqDKePe8S4sbT/Hd9oeV/A=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-56-SL5z_WvhN8CneswVfnCmvw-1; Fri, 04 Nov 2022 15:53:47 -0400
X-MC-Unique: SL5z_WvhN8CneswVfnCmvw-1
Received: by mail-qt1-f199.google.com with SMTP id cj6-20020a05622a258600b003a519d02f59so4405103qtb.5
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 12:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1Y13hIxSrsibCYbBKTOvWFt6HnV4ZBbfk9Epx0sXBM=;
        b=VCidERgRtuMGDb43iLPd1hSpJDvLPN1T/YfO+35EEMCHDKnl/4C1ceSTMZs6GgZVlL
         wEGyGoWfkT9S7mV4lqpK6ZtziQdqquObze+ofiXA6RF4B/EEnDTHtb5VrFmZiTKsjWm+
         /6OJkxBq/S5lRAO+5RUswjQW7v3u6y/PEaibJF1lWGs4AHj/mrNpBRe/OXUvQjcpFIKD
         HMNjsdt+CMiybXbECaSz0KckzK3nfoNzAvb9u1CyUptEOyv1jMH3lNofYNqVwz+Xp3Ui
         5aD/QAhFsz+eTZimfBLClP5bn1HPOxBpnrZhnhWucQ20ZoCvbDz2X2YZXLjD5+OeFaAa
         amwg==
X-Gm-Message-State: ACrzQf1kbRl3VMGa1wIXF74rdM0Fr+oCG5hs+Td5t/NeTcG8kQf6ubvP
        8lT1HlU0X9YsdZhKMOK+l5GtvQiQ0Bye9Yh7FSGm9D24dSomdajvOFvar4dUAxtgifMz5VUeMa2
        n6/ij9pKKSxVUVMG2tnytgg==
X-Received: by 2002:ac8:5747:0:b0:3a5:7262:47b0 with SMTP id 7-20020ac85747000000b003a5726247b0mr2363138qtx.393.1667591627212;
        Fri, 04 Nov 2022 12:53:47 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4sMMtix+VFAlcIVy7dyWq6tx5K9CnJi3y74R/xZx/+zXuKrxKBOJHg8W54+J9nHdRKaA2LMQ==
X-Received: by 2002:ac8:5747:0:b0:3a5:7262:47b0 with SMTP id 7-20020ac85747000000b003a5726247b0mr2363112qtx.393.1667591626941;
        Fri, 04 Nov 2022 12:53:46 -0700 (PDT)
Received: from x1 ([2600:380:5832:f20b:6e6d:975e:a9e9:892e])
        by smtp.gmail.com with ESMTPSA id c8-20020a05620a134800b006ecb9dfdd15sm36890qkl.92.2022.11.04.12.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 12:53:46 -0700 (PDT)
Date:   Fri, 4 Nov 2022 15:53:43 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Eric Chanudet <echanude@redhat.com>,
        Parikshit Pareek <quic_ppareek@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5 0/3] arm64: dts: qcom: add dts for sa8540p-ride board
Message-ID: <Y2Vtxy6U133OcctU@x1>
References: <20221003125444.12975-1-quic_ppareek@quicinc.com>
 <YzsciFeYpvv/92CG@x1>
 <20221004132816.ryhyo5ihwruxspl6@echanude>
 <Y02rrdFqN1X2PC4t@x1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y02rrdFqN1X2PC4t@x1>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 17, 2022 at 03:23:25PM -0400, Brian Masney wrote:
> Parikshit: I found a way to reproduce the crash and isolated the issue
> to the qcom_q6v5_pas driver. Here's how you can reproduce the crash
> that we're seeing:
> 
> 1) Use my instructions at [1] to build an upstream kernel with the arm64
>    defconfg. Today I used linux-next-20221017.
> 
> 2) Copy the modules to the root filesystem. Before you reboot, mv
>    /lib/modules/6.0.0-next-20221017-xxx to
>    /lib/modules/6.0.0-next-20221017-xxx-old so that the modules are not
>    automatically loaded on startup.
> 
> 3) Reboot, and run lsmod and verify that no modules are loaded.
> 
> 4) cd /lib/modules/6.0.0-next-20221017-xxx-old
> 
> 5) Now load the modules that work as expected that are loaded with the
>    upstream arm64 defconfig:
> 
>         insmod ./kernel/net/rfkill/rfkill.ko
>         insmod ./kernel/arch/arm64/crypto/crct10dif-ce.ko
>         insmod ./kernel/net/qrtr/qrtr.ko
>         insmod ./kernel/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.ko
>         insmod ./kernel/drivers/soc/qcom/llcc-qcom.ko
>         insmod ./kernel/drivers/soc/qcom/qmi_helpers.ko
>         insmod ./kernel/drivers/remoteproc/qcom_sysmon.ko
>         insmod ./kernel/drivers/remoteproc/qcom_q6v5.ko
>         insmod ./kernel/drivers/rpmsg/qcom_glink_smem.ko
>         insmod ./kernel/drivers/soc/qcom/socinfo.ko
>         insmod ./kernel/drivers/remoteproc/qcom_pil_info.ko
>         insmod ./kernel/drivers/remoteproc/qcom_common.ko
>         insmod ./kernel/drivers/watchdog/qcom-wdt.ko
>         insmod ./kernel/fs/fuse/fuse.ko
>         insmod ./kernel/drivers/soc/qcom/mdt_loader.ko
> 
> 6) Wait a few minutes to be sure that everything is working as expected
>    on the board.
> 
> 7) Make the board go BOOM:
> 
>         insmod ./kernel/drivers/remoteproc/qcom_q6v5_pas.ko
> 
> We don't know how or have the tools to analyze the ramdumps from the
> Qualcomm firmware at Red Hat, so we're flying blind right now.
> 
> [1] https://lore.kernel.org/lkml/YzsciFeYpvv%2F92CG@x1/

I isolated the hang issue above to a single Kconfig symbol. First, a
quick background. We're not seeing the hang issue using the upstream
kernel with Red Hat's automotive kernel config. We see the hang though
with the upstream arm64 defconfig. There's thousands of symbol
differences between the two defconfigs and none of the changes stuck out
to me. I wrote some code that slowly morphed the Red Hat defconfig into
the upstream arm64 defconfig and committed the symbol changes in stages
along the way. This allowed me to do an automated 'git bisect'.

The symbol CONFIG_NO_HZ_IDLE=y is what triggers the hang. When I remove
that line from arch/arm64/configs/defconfig, then the board continues to
function normally after the qcom_q6v5_pas.ko module is loaded.

Any ideas what could be causing this? Could it be the safety island is
monitoring for a kernel tick and if it doesn't sense one then it kills
the kernel and goes into ramdump mode?

Brian

