Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 110DE5F443D
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 15:28:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbiJDN2b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 09:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiJDN2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 09:28:20 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB76B94
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 06:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1664890098;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=x7R0QoQX8EkKl/iwy07i+r2u0YMp5259F60knxVAX1I=;
        b=Hxbzk4v1lVC//lySNt2pB9PD/1TBV0eZpZ9zSXInnzCoeNHMD93MaLULTFPac6Ieyqq3F6
        F7b7sCp4YB/HzRz9xqm3875CQjJwbJ97/rzFb6tPHrnz84uJke19nPf/ZX+A98w7FW+OWw
        rukKVhm+77T8FIOhcFhRysHJsdCwqPg=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-404-8JJrme2CPv2ONQID-eekZQ-1; Tue, 04 Oct 2022 09:28:17 -0400
X-MC-Unique: 8JJrme2CPv2ONQID-eekZQ-1
Received: by mail-qt1-f198.google.com with SMTP id ay22-20020a05622a229600b0035bbb349e79so9329621qtb.13
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 06:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=x7R0QoQX8EkKl/iwy07i+r2u0YMp5259F60knxVAX1I=;
        b=0CmmzGmru+nzhSffaJpS/jtQWY0WdjxpaQM+HLCWp6ZQNS8eOeN1eDsxt/SMP3lebd
         gO9168QozB/I0PuHNmSPc2RasniR9uMuYzdcwi/mPcw3ShgBTGs/z1rTYx0bFAbWzLsI
         guwx4BkIgBxliy9LOCwnmd6NsfnZASgukksDCkx2Viu6oMWY0F++E5QEWzoM7uc7DDcL
         xo9dIwiu0anCAXz/YCxWKeVmHOQI3HAvEAQf6pXYDlvZ5X976kTE71XEOVwSfYkydCE1
         QWo/KK4Y+YI8wqS69RF9l/FnxHFnPp3mJXkFhgqKUoLB4/EVTMoNnyjgRLESzIToCiT9
         T7KA==
X-Gm-Message-State: ACrzQf1iK5csQJCz5E3/c/v1fZco+30O1ZNkpoR4Rk5T3NvdPRVj3cKw
        iKo05vnaVNCJxbYid8ynicoiCoorI6lTIX6QsygrAdIvc4siemNl6um3aWtLVeX4izvSqOzHrIg
        TtGihto8V373RkeIg3jFYGA==
X-Received: by 2002:a37:9745:0:b0:6cf:9ca3:b43d with SMTP id z66-20020a379745000000b006cf9ca3b43dmr16797897qkd.693.1664890097506;
        Tue, 04 Oct 2022 06:28:17 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7KKaLbCyMn/PryLELR5Y24XxOgrWJ5UBQKi/SEMkMHosQjnfjAJJ8/RTJju7RAfOmZyrBGHg==
X-Received: by 2002:a37:9745:0:b0:6cf:9ca3:b43d with SMTP id z66-20020a379745000000b006cf9ca3b43dmr16797878qkd.693.1664890097283;
        Tue, 04 Oct 2022 06:28:17 -0700 (PDT)
Received: from localhost (pool-100-0-210-47.bstnma.fios.verizon.net. [100.0.210.47])
        by smtp.gmail.com with ESMTPSA id q6-20020a05622a030600b0035badb499c7sm12347890qtw.21.2022.10.04.06.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 06:28:16 -0700 (PDT)
Date:   Tue, 4 Oct 2022 09:28:16 -0400
From:   Eric Chanudet <echanude@redhat.com>
To:     Brian Masney <bmasney@redhat.com>
Cc:     Parikshit Pareek <quic_ppareek@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5 0/3] arm64: dts: qcom: add dts for sa8540p-ride board
Message-ID: <20221004132816.ryhyo5ihwruxspl6@echanude>
References: <20221003125444.12975-1-quic_ppareek@quicinc.com>
 <YzsciFeYpvv/92CG@x1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YzsciFeYpvv/92CG@x1>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 03, 2022 at 01:31:52PM -0400, Brian Masney wrote:
> Just for documentation purposes, to get linux-next-20220930 booting on
> the QDrive3 with the upstream arm64 defconfig I had to apply the
> following patches:
> 
> - arm64: dts: qcom: sc8280xp: fix UFS PHY serdes size
>   https://lore.kernel.org/linux-arm-msm/20220915141601.18435-1-johan+linaro@kernel.org/
> 
>   Without this, the phy fails to probe due to the following error:
> 
>     qcom-qmp-ufs-phy 1d87000.phy: can't request region for resource [mem 0x01d87400-0x01d87507]
>     qcom-qmp-ufs-phy 1d87000.phy: failed to create lane0 phy, -16
>     qcom-qmp-ufs-phy: probe of 1d87000.phy failed with error -16
> 
> - This hack patch is still needed:
>   disable has_address_auth_metacap and has_generic_auth
>   https://github.com/andersson/kernel/commit/d46a4d05d5a17ff4447af08471edd78e194d48e5
> 
>   Without this, the boot hangs at:
> 
>     rcu: srcu_init: Setting srcu_struct sizes based on contention.
>     arch_timer: cp15 and mmio timer(s) running at 19.20MHz (virt/virt).
>     clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
>     sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns
> 
> - My UFS clock patch is still needed:
>   arm64: dts: qcom: sc8280xp: correct ref_aux clock for ufs_mem_phy
>   https://lore.kernel.org/lkml/20220830180120.2082734-1-bmasney@redhat.com/T/#u
> 
> - I didn't use an initrd for testing so I had to change the options
>   CONFIG_SCSI_UFS_QCOM and CONFIG_PHY_QCOM_QMP from =m to =y.
 
I followed the instructions above and linux-next-20220930 booted on the
QDrive3 to a prompt. It then hanged after a couple minutes and rebooted
in Sahara mode:
    B -   1662280 - Sahara Init
    B -   1665422 - Sahara Open

There seems to be no trace from the kernel, this happened consistently
over 3 boots.

I asked Brian, he mentioned he only booted to prompt so that may have
happened unbeknownst to him as well.

-- 
Eric Chanudet

