Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFBE480911
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 13:20:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbhL1MUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 07:20:21 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:53644 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231142AbhL1MUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 07:20:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1640694015;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5VvjubQBgQXusD/qnqAa/6+So3MqJfcWXAtQ7MU1qeU=;
        b=WC1ZZZ6hKJHgh0LP91eQ86qFLDCBX+7j5fVdH1HZZj7CgApjg7Fqrq1CdsWTKlk4V7/vxm
        8zfCJT5hMYpeA6gAxO1eRLDenpZbdc3u5qcTEGX0Mg7gMzbK/Ee4fIjJeUd20+lJqWeLQ2
        xRCGWwYLGuTdlvUaHBLjxoll7sImbgI=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-jZTHijMLOMCCxZsfKVXU2Q-1; Tue, 28 Dec 2021 07:20:13 -0500
X-MC-Unique: jZTHijMLOMCCxZsfKVXU2Q-1
Received: by mail-ed1-f70.google.com with SMTP id z10-20020a05640235ca00b003f8efab3342so5973697edc.2
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 04:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5VvjubQBgQXusD/qnqAa/6+So3MqJfcWXAtQ7MU1qeU=;
        b=jko69MpoZWaJCqolpzuG4Vvs8y/RfiNGaRNRZ7Aup6oqtQsa41bhIpMyC/HnaVO8df
         GfzSJHs2ja9rSqStsXBFrRm0I9AxiCdyB6GbOrjFKrXppq7ekoVKmbloD4TnekmocvdW
         H1kwW3n+VvUw6XvfBKPEgRic8L4r0A4Q+CUQrSiVAkqxYQWIkcEety15TNWGkf1XB0Or
         a8KsoeLSJD5KGpVJphUcMD8TlPqnM8cjPHzJDcPGrYRkqtEiESS9laxxXogXJ0gQFEC0
         0ejhpeO6UnubTqOfnL2A6ytdUOQgaLke725M1VAB43QYNqCMF6wgQVW2ItAZCP79lg1b
         GBsw==
X-Gm-Message-State: AOAM532edNFZF8AM3qJKN5cq6bq3CkOVzwk2ILOYvH1XNUcK4n0K2Cjz
        Eiipp5fBvNdDN/om6ipjspBy/UYojWvVw5i7BPIoFJ/Ht93YUFWtZ2tMnENjLWZnNXRofnjVJvr
        8qJsS1qV9lZ1oK3d6b1Uaog==
X-Received: by 2002:a17:907:60d6:: with SMTP id hv22mr17260600ejc.478.1640694012553;
        Tue, 28 Dec 2021 04:20:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5XdEog79sJL19FCO0DE7mMk8OhXWL3OTKf+yaTjbtWynbAlqQXyYdTwnhqf6+6U8AWbL0Hg==
X-Received: by 2002:a17:907:60d6:: with SMTP id hv22mr17260594ejc.478.1640694012382;
        Tue, 28 Dec 2021 04:20:12 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1? (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
        by smtp.gmail.com with ESMTPSA id 14sm6007390ejk.215.2021.12.28.04.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Dec 2021 04:20:11 -0800 (PST)
Message-ID: <279c7bd8-c0bb-e58c-1149-d124102bf8b8@redhat.com>
Date:   Tue, 28 Dec 2021 13:20:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/8] typec: mux: Introduce support for multiple TypeC
 muxes
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On 12/28/21 06:21, Bjorn Andersson wrote:
> This series introduces a level of indirection between the controller's view of
> a typec_mux/switch and the implementation and then expands that to support
> multiple drivers.
> 
> This is needed in order to support devices such as the Qualcomm Snapdragon 888
> HDK, which does muxing and orientation handling in the QMP (USB+DP) PHY and SBU
> muxing in the external FSA4480 chip.
> 
> Additionally integration of typec mux and switch in the QMP PHY is included in
> the series, as is the new FSA4480 driver. This is done to deal with the
> renaming of the driver-side typec_mux -> typec_mux_dev.
> 
> Bjorn Andersson (8):
>   dt-bindings: phy: qcom,qmp-usb3-dp: Add altmode/switch properties
>   phy: qcom-qmp: Register typec mux and orientation switch
>   device property: Helper to match multiple connections
>   device property: Use multi-connection matchers for single case
>   typec: mux: Introduce indirection
>   typec: mux: Allow multiple mux_devs per mux
>   dt-bindings: usb: Add binding for fcs,fsa4480
>   usb: typec: mux: Add On Semi fsa4480 driver

Thank you for your series, I will leave commenting on the
dt-bindings and typec-mux changes to others.

But what I can do is test this on an x86 device using
a pi3usb30532 mux for USB super-speed and DP-alt-mode
muxing / orientation switching.

I'm going to wait a bit with doing that till this has had
some reviews and possibly also some newer versions because
of those reviews. If you haven't received a Tested-by from me
when this looks like it is ready for merging please ping me.

Regards,

Hans


> 
>  .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |  14 +
>  .../devicetree/bindings/usb/fcs,fsa4480.yaml  |  72 +++++
>  drivers/base/property.c                       |  83 ++++--
>  drivers/phy/qualcomm/phy-qcom-qmp.c           | 176 ++++++++++--
>  drivers/usb/typec/bus.c                       |   2 +-
>  drivers/usb/typec/mux.c                       | 257 +++++++++++++-----
>  drivers/usb/typec/mux.h                       |  12 +-
>  drivers/usb/typec/mux/Kconfig                 |   9 +
>  drivers/usb/typec/mux/Makefile                |   1 +
>  drivers/usb/typec/mux/fsa4480.c               | 220 +++++++++++++++
>  drivers/usb/typec/mux/intel_pmc_mux.c         |   8 +-
>  drivers/usb/typec/mux/pi3usb30532.c           |   8 +-
>  include/linux/property.h                      |   5 +
>  include/linux/usb/typec_mux.h                 |  22 +-
>  14 files changed, 762 insertions(+), 127 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
>  create mode 100644 drivers/usb/typec/mux/fsa4480.c
> 

