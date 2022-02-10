Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71F154B0A25
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 11:01:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239274AbiBJKA7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 05:00:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239271AbiBJKA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 05:00:58 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9C814C06
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 02:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1644487258;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=j6iG/zRSXBJr0V+KQL6qsWdT16lcc2ezAm1Oyf7IUXI=;
        b=F1FQTSpv8TfYIcVmibJX+UszlxwUkqwnZnJBYkLxlHdocWC+UY1cebpq1+gOCjnt9xLkaN
        FELRDC4haOiCBdukmuP/4s7c24rekpytAJmlqck9HQOWr3E808TvT+FZtA6sN7ysYvuyeD
        nPiAmv4auYFwiZ0gfFukU2DbQlfDJmU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-wl08Z6vWPPyC4RQYhdKFgw-1; Thu, 10 Feb 2022 05:00:57 -0500
X-MC-Unique: wl08Z6vWPPyC4RQYhdKFgw-1
Received: by mail-ej1-f69.google.com with SMTP id z26-20020a1709067e5a00b006cbe0628826so2478913ejr.10
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 02:00:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j6iG/zRSXBJr0V+KQL6qsWdT16lcc2ezAm1Oyf7IUXI=;
        b=vIHcKAwSPL8oJeCloLplF8DNKTmQujvWremY89GyBczOrI1Va/TJ7b0POF6QM6JRNB
         ayhINSg0Y/4i27FtitTQKWNlf/GwkModKDuYhfIOCTby8FJMael8SMbasTq+cks/EsKV
         gCkcjsZ8yxWLJlZHb7WLsyQVtgagbo+ltAMIRBpJMaoB9hDcPTrOp6LXOcXkzpiYrjVO
         ns93x3/VKmdRXki/LlOy0Sig+isqMeeobe9TD070XvhzJ+QxX+HBIErEWC+DjNcC1UuK
         ESg37Tb9LLFPP3ftrTrVP7k+a+BZw7fMKA1WaTvaJlGPQbyQzr64mq7EwHSh900kH89k
         Ak+g==
X-Gm-Message-State: AOAM533zTOmEom1Su0qIr9KHQPwxKLEz2WGy5yLBFkf6dSWW69PP2ISq
        fO+QOgtUnRw0mBd3DucmNlVCWWKrPL9wX6aORzw3737gOztkGV/raRrQCCKhs5TdQBQ5j2xWlfq
        stXLA4ZZKrDxCc3u9QmSH8A==
X-Received: by 2002:a50:ed89:: with SMTP id h9mr7693436edr.130.1644487256282;
        Thu, 10 Feb 2022 02:00:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy29EIF5dLlj4EgzKveWm+vfQmoyV88rAwDkSQcW7lKexRy8Kajda6TOEEQq/JheLqpWVvS1Q==
X-Received: by 2002:a50:ed89:: with SMTP id h9mr7693422edr.130.1644487256142;
        Thu, 10 Feb 2022 02:00:56 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1? (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
        by smtp.gmail.com with ESMTPSA id f28sm2053275ejl.46.2022.02.10.02.00.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 02:00:55 -0800 (PST)
Message-ID: <da0f5804-559a-1efd-373f-93eb87196255@redhat.com>
Date:   Thu, 10 Feb 2022 11:00:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2 0/6] typec: mux: Introduce support for multiple TypeC
 muxes
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20220208031944.3444-1-bjorn.andersson@linaro.org>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220208031944.3444-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 2/8/22 04:19, Bjorn Andersson wrote:
> This series introduces a level of indirection between the controller's view of
> a typec_mux/switch and the implementation and then expands that to support
> multiple drivers.
> 
> This is needed in order to support devices such as the Qualcomm Snapdragon 888
> HDK, which does muxing and orientation handling in the QMP (USB+DP) PHY and SBU
> muxing in the external FSA4480 chip.
> 
> Included in the series is a the new FSA4480 driver. This is done to deal with
> the renaming of the driver-side typec_mux -> typec_mux_dev.

I have tested patches 1-4 on a GPD win which uses a fusb302 TCPM with a pi3usb30532
mux and superspeed orientation switching as well as DP over Type-C still works fine
there, so you may add my:

Tested-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans





> 
> Changes since v1:
> - Omitted QMP changes from this series, as the muxing implementation needs a
>   little bit more debugging.
> 
> Bjorn Andersson (6):
>   device property: Helper to match multiple connections
>   device property: Use multi-connection matchers for single case
>   typec: mux: Introduce indirection
>   typec: mux: Allow multiple mux_devs per mux
>   dt-bindings: usb: Add binding for fcs,fsa4480
>   usb: typec: mux: Add On Semi fsa4480 driver
> 
>  .../devicetree/bindings/usb/fcs,fsa4480.yaml  |  72 +++++
>  drivers/base/property.c                       |  85 ++++--
>  drivers/usb/typec/bus.c                       |   2 +-
>  drivers/usb/typec/mux.c                       | 261 +++++++++++++-----
>  drivers/usb/typec/mux.h                       |  12 +-
>  drivers/usb/typec/mux/Kconfig                 |   9 +
>  drivers/usb/typec/mux/Makefile                |   1 +
>  drivers/usb/typec/mux/fsa4480.c               | 220 +++++++++++++++
>  drivers/usb/typec/mux/intel_pmc_mux.c         |   8 +-
>  drivers/usb/typec/mux/pi3usb30532.c           |   8 +-
>  include/linux/property.h                      |   5 +
>  include/linux/usb/typec_mux.h                 |  22 +-
>  12 files changed, 595 insertions(+), 110 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
>  create mode 100644 drivers/usb/typec/mux/fsa4480.c
> 

