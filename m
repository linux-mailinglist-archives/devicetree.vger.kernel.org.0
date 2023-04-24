Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40FC86ED809
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 00:36:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232969AbjDXWgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 18:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232940AbjDXWgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 18:36:21 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C0DC6185
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 15:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682375730;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=p8uiUKAh1MkDDewdBSb2LEHqUzT7fTsXNylXR5bsSUM=;
        b=YC3EJDdgOxR6mR4UJNXlvXrwrMx66beWdjHBheInxboIxIoJRmBdrBAcQ7wYklqDItm87C
        6fg7QuvXoQTpZ4rVE6qXR50okeuw+uBKOVc/i7E/4fk1QOX4B0mnUzl/ez/g0S+OiqFNAi
        73eiW6EBl4O8V6W2L4jBTJ7A6JlHOjk=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-8SVl4jaOPgyV83SvfYGnEA-1; Mon, 24 Apr 2023 18:35:29 -0400
X-MC-Unique: 8SVl4jaOPgyV83SvfYGnEA-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-5ef626ad00fso72015306d6.3
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 15:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682375729; x=1684967729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8uiUKAh1MkDDewdBSb2LEHqUzT7fTsXNylXR5bsSUM=;
        b=Zfwld9WdL+Y3AtKAGPFAX2HzBOpFa09MK9RpeMK1QJgw2E+sbYfneiQ7F7b84hyuEd
         kvNQIaJZE7BANFNBbPdR4dVgzi/H8iMZZflf3Gr3UQE8Fans80IAf6v2Xn9iJJsJ5D7W
         0D1ezZUgHhPUbjcZ78JpWkMJvIv5T5bDkmATfxu+vsLgd1M2/v/JqcBgg1+U0rSenAOc
         b917uPC46bpK4SuGE87RQAOzKsk29MKk0sauAjR1mzSfc3Z1IL9MltoMkJgGblPNP9hf
         z7E29xugV2gxbcILFLUFAjIzMx8Od8J8Up+v5HdbBA3DIPjd3QFqMltnc9dcvpAdWkbw
         8elw==
X-Gm-Message-State: AAQBX9ciwj1E12M9Rm71ovZKnK/Gp4Z1lfPv4jBzdZ3XPd9rXZC7PWXA
        hVmw7hppW0n+KQrn0hgXGouIllKKUr3JRvlYssfeXNcSbawsb0FWawJcA+mz5C5eGN+WQHQaum2
        BLMVVLUOl8kQSGptZ18mjEQ==
X-Received: by 2002:ac8:7f42:0:b0:3ed:4a17:8b0f with SMTP id g2-20020ac87f42000000b003ed4a178b0fmr24709360qtk.25.1682375708327;
        Mon, 24 Apr 2023 15:35:08 -0700 (PDT)
X-Google-Smtp-Source: AKy350aBh9WN4eEBfeqITYWvJioz91FsGNrKf2GwcoO3UjeLguJG/OpDDT7yB41icNJRnpnxpchBoA==
X-Received: by 2002:ac8:7f42:0:b0:3ed:4a17:8b0f with SMTP id g2-20020ac87f42000000b003ed4a178b0fmr24709331qtk.25.1682375707944;
        Mon, 24 Apr 2023 15:35:07 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id a9-20020ac844a9000000b003d3a34d2eb2sm3997005qto.41.2023.04.24.15.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Apr 2023 15:35:07 -0700 (PDT)
Date:   Mon, 24 Apr 2023 18:35:04 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Shazad Hussain <quic_shazhuss@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZEcEGJiikEC2wIVE@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shazad,

On Fri, Apr 21, 2023 at 07:09:15PM +0530, Shazad Hussain wrote:
> Update relavent DT bindings for USB, add new config to the phy driver,
> add USB and PHY nodes to the .dtsi and enable them in the board .dts
> for the sa8775p-ride platform.
> 
> Shazad Hussain (6):
>   dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
>   dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
>     binding
>   phy: qcom-qmp: Add SA8775P USB3 UNI phy
>   arm64: dts: qcom: sa8775p: add USB nodes
>   arm64: dts: qcom: sa8775p-ride: enable USB nodes
> 
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
>  6 files changed, 381 insertions(+), 2 deletions(-)
> 
> -- 
> 2.17.1
> 

Thanks for posting this. I tested the series on the sa8775p, and it seems
initialization for the controller at a400000 sometimes fails with a
timeout (-110) error:

    dwc3 a400000.usb: Adding to iommu group 2
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.0.auto: can't setup: -110
    xhci-hcd xhci-hcd.0.auto: USB bus 1 deregistered
    xhci-hcd: probe of xhci-hcd.0.auto failed with error -110
    dwc3 a600000.usb: Adding to iommu group 3
    dwc3 a800000.usb: Adding to iommu group 4
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.1.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a800000
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
    xhci-hcd xhci-hcd.1.auto: Host supports USB 3.1 Enhanced SuperSpeed
    hub 1-0:1.0: USB hub found
    hub 1-0:1.0: 1 port detected
    usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
    hub 2-0:1.0: USB hub found
    hub 2-0:1.0: 1 port detected

In this case, only usb devices for a800000 are showing:

    dracut:/# ls -alh /sys/bus/usb/devices
    total 0
    drwxr-xr-x 2 root root 0 Feb 27 00:00 .
    drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1/1-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2/2-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2

This happens approximately 1 out of 2 reboots. Here's the kernel output
when initialization succeeds:

    dwc3 a600000.usb: Adding to iommu group 2
    dwc3 a800000.usb: Adding to iommu group 3
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
    xhci-hcd xhci-hcd.0.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.0.auto: irq 161, io mem 0x0a800000
    xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
    xhci-hcd xhci-hcd.0.auto: Host supports USB 3.1 Enhanced SuperSpeed
    hub 1-0:1.0: USB hub found
    hub 1-0:1.0: 1 port detected
    usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
    hub 2-0:1.0: USB hub found
    hub 2-0:1.0: 1 port detected
    dwc3 a400000.usb: Adding to iommu group 4
    xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
    xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 3
    xhci-hcd xhci-hcd.1.auto: USB3 root hub has no ports
    xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe65 hci version 0x110 quirks 0x0000000000010010
    xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a400000
    hub 3-0:1.0: USB hub found
    hub 3-0:1.0: 1 port detected

And the list of usb devices:

    dracut:/# ls -alh /sys/bus/usb/devices
    total 0
    drwxr-xr-x 2 root root 0 Feb 27 00:00 .
    drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1/1-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2/2-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 3-0:1.0 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3/3-0:1.0
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2
    lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb3 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3

Have you also encountered this?

Best,

Adrien

