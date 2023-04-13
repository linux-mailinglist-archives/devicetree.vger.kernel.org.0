Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99CE26E14AC
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 20:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbjDMSzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 14:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbjDMSzi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 14:55:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89BB719C
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 11:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681412090;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bj+U/10GLqXj2YH6vIakik5vgTZzUMJtlbeaT9V0zCc=;
        b=HMdjtS3AgPDkE7eg8lC0Nnq1tyoX1Vp0IDDS7RlZibISZBrS7CT+KW8GZ+epANqJIjRLzt
        pTjUm2Zd3wWpcyYI/Vm4CvFA6c1jahzLIkmFeVcainbn2WDeWDNJ3m7+RtG5Rz7VcoBQ7D
        z6XzOpYWw8DnZVkmo0fcG/TfNmt2ydU=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-skoFKhiSMfq8KJA3BAGtKw-1; Thu, 13 Apr 2023 14:54:47 -0400
X-MC-Unique: skoFKhiSMfq8KJA3BAGtKw-1
Received: by mail-qt1-f200.google.com with SMTP id o20-20020a05622a009400b003e7ea68791eso5255269qtw.18
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 11:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681412087; x=1684004087;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bj+U/10GLqXj2YH6vIakik5vgTZzUMJtlbeaT9V0zCc=;
        b=JaDIJB4lZ/y5JG+dd554eNZDxLW8UxN3WGlQkvtaUJac6K/i9PrrH/9LQJ1A79ne/2
         PFdJHNcxoMEUsWLj9C9ZFFdVSG/L7MOEok30FE4fkR41r7jlNgme3b62jqWUQ3q4NPss
         U4HewSOZ0yEVkMgsa0OonNOsxPZlKg0fJuTGAox3o5Oy6XcheL5M6vRlrZQ5ayQXNsuX
         8cXWFRrkG+j29HzTwOVZQbtMYmrzXy6e5JSom5JydTfR03OF5bkcEhPxt5l1U+c7Dc8L
         NzSB8gyoJWTiXPN1+debQXfTmiL8GonaNdGPiySFFfd7vZTzg3R7D/fhWKgM92+0nNtb
         J/JA==
X-Gm-Message-State: AAQBX9c2ksGwgz/yhvBaUeTzZ4uCJpCBE23M3VXQEg+4SKRhfq1h/ONI
        PETdXz7+Tue4WEkTnfOimWTvKH7ZYqgkdL8uY3cREIqSe/F3fZCItioSQVpgN5XKRD3d9h6nDiK
        juJD+3pA8RrpYszdTGLKOqQ==
X-Received: by 2002:a05:6214:2348:b0:5cb:ab2e:b15c with SMTP id hu8-20020a056214234800b005cbab2eb15cmr4079200qvb.30.1681412087047;
        Thu, 13 Apr 2023 11:54:47 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZoYb+WLMQeaI11rL07yAbqKKGrVN73uJb36S0wBT3D4r4/v0v0UUT2Z63JUk2EU/J+iCeW0A==
X-Received: by 2002:a05:6214:2348:b0:5cb:ab2e:b15c with SMTP id hu8-20020a056214234800b005cbab2eb15cmr4079184qvb.30.1681412086810;
        Thu, 13 Apr 2023 11:54:46 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id t13-20020a0cf98d000000b005dd8b9345bdsm613948qvn.85.2023.04.13.11.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 11:54:46 -0700 (PDT)
Date:   Thu, 13 Apr 2023 14:54:43 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Krishna Kurapati <quic_kriskura@quicinc.com>
Cc:     Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
        quic_wcheng@quicinc.com, quic_jackp@quicinc.com,
        quic_harshq@quicinc.com, ahalaney@redhat.com,
        quic_shazhuss@quicinc.com
Subject: Re: [PATCH v6 0/8] Add multiport support for DWC3 controllers
Message-ID: <ZDhP823LUMCDuD9q@fedora>
References: <20230405125759.4201-1-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230405125759.4201-1-quic_kriskura@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> Krishna Kurapati (8):
>   dt-bindings: usb: Add bindings for multiport properties on DWC3
>     controller
>   usb: dwc3: core: Access XHCI address space temporarily to read port
>     info
>   usb: dwc3: core: Skip setting event buffers for host only controllers
>   usb: dwc3: core: Refactor PHY logic to support Multiport Controller
>   usb: dwc3: qcom: Add multiport controller support for qcom wrapper
>   arm64: dts: qcom: sc8280xp: Add multiport controller node for SC8280
>   arm64: dts: qcom: sa8295p: Enable tertiary controller and its 4 USB
>     ports
>   arm64: dts: qcom: sa8540-ride: Enable first port of tertiary usb
>     controller
>
>  .../devicetree/bindings/usb/snps,dwc3.yaml    |  13 +-
>  arch/arm64/boot/dts/qcom/sa8295p-adp.dts	 |  47 +++
>  arch/arm64/boot/dts/qcom/sa8540p-ride.dts     |  22 ++
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  58 +++
>  drivers/usb/dwc3/core.c                       | 373 ++++++++++++++----
>  drivers/usb/dwc3/core.h                       |  71 +++-
>  drivers/usb/dwc3/drd.c                        |  13 +-
>  drivers/usb/dwc3/dwc3-qcom.c                  |  28 +-
>  8 files changed, 523 insertions(+), 102 deletions(-)

I tested this series on the sa8540p-ride, with a USB Ethernet adapter
plugged into the board. The device shows up as expected:

# lsusb -tv
/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=xhci-hcd/2p, 10000M
    ID 1d6b:0003 Linux Foundation 3.0 root hub
    |__ Port 1: Dev 2, If 0, Class=Vendor Specific Class, Driver=r8152, 5000M
        ID 0bda:8153 Realtek Semiconductor Corp. RTL8153 Gigabit Ethernet Adapter
/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=xhci-hcd/4p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub

Tested-by: Adrien Thierry <athierry@redhat.com> # sa8540p-ride

