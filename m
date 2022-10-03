Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 533685F348C
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 19:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbiJCRcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 13:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiJCRcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 13:32:14 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 648BA3CBFA
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 10:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1664818316;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=3vyvPsr/L8BrYe4IUlRuvSFBjkSYPUr3deHCeUKIK4U=;
        b=jMvnCKOqup/7G8YTHg/s9RlyeWtES4n0KXH0A+QbL/OAgaxjzR5y3ovlgloA7wsuGZb5jj
        X5pHXIvkv4zJb2d9s+KBx9rO9FUzMltWgp1goguyr3vvoe/an/ilwkoFf9KIh/WApYsQfr
        869u06Eydf3PXQLbCdan5nOqwAF6Q1M=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-632-mH-NRgrjORCdWlXM5LcJug-1; Mon, 03 Oct 2022 13:31:55 -0400
X-MC-Unique: mH-NRgrjORCdWlXM5LcJug-1
Received: by mail-io1-f69.google.com with SMTP id e15-20020a5d8acf000000b006a3ed059e49so7406724iot.14
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 10:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3vyvPsr/L8BrYe4IUlRuvSFBjkSYPUr3deHCeUKIK4U=;
        b=pQoKDG5f5whpLIUkSImYaausiXvHCgLQAyRCJDQ+EgaCNMFNY3qhsiHs171mI44ahU
         skQiw5MGxOYtyGwAyC+7hd90mlet79su3Zpw97uUF/Kvi6G0EIn8m79yWxC6YRZ9DLWe
         gttzBsQ3hqCApcDn7ThDNn8mwD4FEiXALbGMTzAVhCa0WeVAlNmnZmbeysKAIbzwfMLO
         dheB/vIAhCNLTFebimkCVljkv8hbQHFpaLmet3Ps3jPmnWhc3mrnLfIK3GBotFKWhnB3
         JlW1ljjn9/ptOCfVz0q9O46xkReLTPPrjxYr4xWmW3i9m+mq5WFDflQugggzXxVGLIPL
         /9KQ==
X-Gm-Message-State: ACrzQf0s7qvWNNqQFK9Ea6nvyoMWu74haJQZGR8mpGZTWb/qQ9n7avRK
        bD43aPM6nLUmBE7Xt/oFmTXckJgK5/GRKrBGRNt2gzZM7onD3KjlP2WDwzo/eukEUe2Of4f9io0
        CWhKgDjCmkaCWko5rDNOjKw==
X-Received: by 2002:a05:6e02:180a:b0:2f6:9b06:a184 with SMTP id a10-20020a056e02180a00b002f69b06a184mr10459910ilv.137.1664818314704;
        Mon, 03 Oct 2022 10:31:54 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM68aHLAOyo71WPpxFAs/97lC6WQUEAdVLU0LC4oSgLPtzw3n55yGVx+q7kv+yXGSrcJmAcC7Q==
X-Received: by 2002:a05:6e02:180a:b0:2f6:9b06:a184 with SMTP id a10-20020a056e02180a00b002f69b06a184mr10459892ilv.137.1664818314430;
        Mon, 03 Oct 2022 10:31:54 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id s14-20020a056602168e00b006a2e2834531sm4762113iow.44.2022.10.03.10.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 10:31:53 -0700 (PDT)
Date:   Mon, 3 Oct 2022 13:31:52 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Parikshit Pareek <quic_ppareek@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5 0/3] arm64: dts: qcom: add dts for sa8540p-ride board
Message-ID: <YzsciFeYpvv/92CG@x1>
References: <20221003125444.12975-1-quic_ppareek@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003125444.12975-1-quic_ppareek@quicinc.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 03, 2022 at 06:24:40PM +0530, Parikshit Pareek wrote:
> Parikshit Pareek (3):
>   dt-bindings: arm: qcom: Document additional sa8540p device
>   arm64: dts: qcom: sa8295p: move common nodes to dtsi
>   arm64: dts: qcom: introduce sa8540p-ride dts

For the series:

Reviewed-by: Brian Masney <bmasney@redhat.com>
Tested-by: Brian Masney <bmasney@redhat.com>


Just for documentation purposes, to get linux-next-20220930 booting on
the QDrive3 with the upstream arm64 defconfig I had to apply the
following patches:

- arm64: dts: qcom: sc8280xp: fix UFS PHY serdes size
  https://lore.kernel.org/linux-arm-msm/20220915141601.18435-1-johan+linaro@kernel.org/

  Without this, the phy fails to probe due to the following error:

    qcom-qmp-ufs-phy 1d87000.phy: can't request region for resource [mem 0x01d87400-0x01d87507]
    qcom-qmp-ufs-phy 1d87000.phy: failed to create lane0 phy, -16
    qcom-qmp-ufs-phy: probe of 1d87000.phy failed with error -16

- This hack patch is still needed:
  disable has_address_auth_metacap and has_generic_auth
  https://github.com/andersson/kernel/commit/d46a4d05d5a17ff4447af08471edd78e194d48e5

  Without this, the boot hangs at:

    rcu: srcu_init: Setting srcu_struct sizes based on contention.
    arch_timer: cp15 and mmio timer(s) running at 19.20MHz (virt/virt).
    clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
    sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns

- My UFS clock patch is still needed:
  arm64: dts: qcom: sc8280xp: correct ref_aux clock for ufs_mem_phy
  https://lore.kernel.org/lkml/20220830180120.2082734-1-bmasney@redhat.com/T/#u

- I didn't use an initrd for testing so I had to change the options
  CONFIG_SCSI_UFS_QCOM and CONFIG_PHY_QCOM_QMP from =m to =y.

Brian

