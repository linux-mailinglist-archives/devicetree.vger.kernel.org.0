Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C55F473B868
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 15:07:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231466AbjFWNHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 09:07:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjFWNHl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 09:07:41 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D8C4213A
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 06:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1687525617;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+nlw8o0x9EmBbnewRBB9FOcSf2qgr1xezY4CpDaC89M=;
        b=dqGqlyik+K7vpvkYhcae8Oa26XEXAhC97ZeW0zP97e409/aneI/ePk2O+0Kxy/GavajD1e
        cPuWemHIah0KsgrlNjiX0Ycrn4i1Uaz0cQOSdeSuqzygSwsb9Is9CFCglNsslJiH+oMgM/
        SMqP33xJYP0xjv3WQztdrtzjdfQ6cc0=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-RpQ6agdhNUuNccWceHMdkw-1; Fri, 23 Jun 2023 09:06:56 -0400
X-MC-Unique: RpQ6agdhNUuNccWceHMdkw-1
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3a044f9104dso553399b6e.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 06:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687525616; x=1690117616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nlw8o0x9EmBbnewRBB9FOcSf2qgr1xezY4CpDaC89M=;
        b=GATNJDQdtBTQ+KJa+tBGoEEN4nZ6TL8JIyDYKXHTVPA3x0bGJP2yLTMjJ4vdfzA40h
         iqUKCBXYTtbUI/UaoTI2zSiQGSYlj/vR4S1014jl37nAcapn3wnuTem/RyW3Az1GuxJY
         q2QUnoG36Y+BL7FpaN5c9/njCJitQsXLsxizzEsUzM9YBV1gUG4HYc9gZeDc+JdSb9Ic
         nfu9w7HmRmzir9h2+ixfTRyWn9bfP2w1sBqLXnWy/Uef2iCbaaHWYvShmn0v32WoZjXd
         7EkDAIF6xodwwivG1VG1zQNWYUCYeUgNuCBnhXhqoXoM9jbVk/cKdyvuN/g+RjCYUj3G
         b0Rg==
X-Gm-Message-State: AC+VfDw0TsPVYRja8Ef9OO539PsHpT1prm7bmcS+mGVFtWhfdq3lyHy2
        feKyZR56g3Kz9Y6sWEZThIeiki38i2Y13Dz5q02JAUzjYOW0F6M8NDbvcnhAMj6a/Q/1hXe9wGF
        HLmdktdIOM0tlmhO1uQGh6g==
X-Received: by 2002:a05:6808:1386:b0:39e:b84b:4786 with SMTP id c6-20020a056808138600b0039eb84b4786mr20204461oiw.27.1687525616009;
        Fri, 23 Jun 2023 06:06:56 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ73eFqk8vQn5O2qswhndAQq+yzi1FAVd85HKmLTe2wlqJ6VQg6y5tF3WlSHMlgK/pA6NSAzsQ==
X-Received: by 2002:a05:6808:1386:b0:39e:b84b:4786 with SMTP id c6-20020a056808138600b0039eb84b4786mr20204357oiw.27.1687525614823;
        Fri, 23 Jun 2023 06:06:54 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::f])
        by smtp.gmail.com with ESMTPSA id be18-20020a056808219200b003a05636f4a8sm2061949oib.29.2023.06.23.06.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 06:06:54 -0700 (PDT)
Date:   Fri, 23 Jun 2023 08:06:51 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v2 00/12] net: stmmac: replace boolean fields in
 plat_stmmacenet_data with flags
Message-ID: <20230623130651.a36qensnjwx6j4ea@halaney-x13s>
References: <20230623100845.114085-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230623100845.114085-1-brgl@bgdev.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 23, 2023 at 12:08:33PM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> As suggested by Jose Abreu: let's drop all 12 boolean fields in
> plat_stmmacenet_data and replace them with a common bitfield.
> 
> v1 -> v2:
> - fix build on intel platforms
> 
> Bartosz Golaszewski (12):
>   net: stmmac: replace the has_integrated_pcs field with a flag
>   net: stmmac: replace the sph_disable field with a flag
>   net: stmmac: replace the use_phy_wol field with a flag
>   net: stmmac: replace the has_sun8i field with a flag
>   net: stmmac: replace the tso_en field with a flag
>   net: stmmac: replace the serdes_up_after_phy_linkup field with a flag
>   net: stmmac: replace the vlan_fail_q_en field with a flag
>   net: stmmac: replace the multi_msi_en field with a flag
>   net: stmmac: replace the ext_snapshot_en field with a flag
>   net: stmmac: replace the int_snapshot_en field with a flag
>   net: stmmac: replace the rx_clk_runs_in_lpi field with a flag
>   net: stmmac: replace the en_tx_lpi_clockgating field with a flag
> 
>  .../stmicro/stmmac/dwmac-dwc-qos-eth.c        |  4 +-
>  .../net/ethernet/stmicro/stmmac/dwmac-intel.c | 23 +++++------
>  .../ethernet/stmicro/stmmac/dwmac-mediatek.c  |  5 ++-
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        |  8 ++--
>  .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c |  2 +-
>  .../net/ethernet/stmicro/stmmac/dwmac-tegra.c |  4 +-
>  .../ethernet/stmicro/stmmac/stmmac_hwtstamp.c |  4 +-
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 40 +++++++++++--------
>  .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  2 +-
>  .../ethernet/stmicro/stmmac/stmmac_platform.c | 10 +++--
>  .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  5 ++-
>  include/linux/stmmac.h                        | 26 ++++++------
>  12 files changed, 76 insertions(+), 57 deletions(-)
> 
> -- 
> 2.39.2
> 

The series looks proper to me:

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

