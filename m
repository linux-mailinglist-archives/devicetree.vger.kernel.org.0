Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A98DC51CED1
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 04:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1387643AbiEFAvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 20:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1387638AbiEFAvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 20:51:46 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D73C23162
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 17:48:04 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id r192so712063pgr.6
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 17:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8H1hD0Mt9l4w14U4/SRoh7xqynrycl1d7ruNMYrGOXM=;
        b=VeVpMWh2cjKV3lc2nH/KPSCCrD/CGkL2HT5V4Ze0aYcftc9PaqEcjOXNEkCPOnn37W
         O0d81fmemvgKLerZwNPXfAA+7gfSVWT/KBaP0F5CjmpCNvLsBxN2uRmbtHalNy+JtT/I
         K85/XCX3VTHgWWLcNV0AhOe5pGmHmSucCbsnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8H1hD0Mt9l4w14U4/SRoh7xqynrycl1d7ruNMYrGOXM=;
        b=J3xGaNzPGBXI//A8nZRMDkKmUaVK3oqZ2oDNlI0ouJFFLbOc7j2BTwXMJOUfZ0KFRw
         PapM1Tg/Rk2u390/qymLRcEu1tdRLMm6CCpAZZaY0BB1QV5HkvRlyx7Y9CtQaTHn8KKb
         RS0g7Oav4VA6Zcmpz/Z+gmSGRwjrc4RDD+nSN7H1eSCJj3LxgXUv/nXrUWZGwWC8htpb
         QjgxoMX4V9rwXmHomkjznLv2UcYjbG8277sVH4HpZGcVfHKv7xRSbRx02Pwr8DbOY1xZ
         uWKeL1+MZv/tkq8klDB75u62qggDUjryBC729LWNwifbx/l7B9QOoK0AsSzjS0qKaW5k
         jnKQ==
X-Gm-Message-State: AOAM5329Tx4BM5BQU1dU3vNOhaz1EbFcshtL7P9K61uAPDqCOXQjGy0r
        KngkVEIUglDcvd5bG/x/ylj6yZ/1DmKqJQ==
X-Google-Smtp-Source: ABdhPJx3sbhEjKzbUXWsBF0Is48l4gQcbyDGHkecwlZSvN3GylD2Q8p9Mpri/WVTo3olKHcUfnr+BQ==
X-Received: by 2002:a63:4101:0:b0:3aa:6375:e5f4 with SMTP id o1-20020a634101000000b003aa6375e5f4mr679533pga.240.1651798083634;
        Thu, 05 May 2022 17:48:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:5605:d5cd:699b:1b26])
        by smtp.gmail.com with UTF8SMTPSA id s13-20020a170902988d00b0015e8d4eb257sm237220plp.161.2022.05.05.17.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 17:48:03 -0700 (PDT)
Date:   Thu, 5 May 2022 17:48:02 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>, swboyd@chromium.org,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Set SPI flash to 50 MHz for
 herobrine boards
Message-ID: <YnRwQglUz9R61ZG/@google.com>
References: <20220505161425.1.Icf6f3796d2fa122b4c0566d9317b461bfbc24b7f@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220505161425.1.Icf6f3796d2fa122b4c0566d9317b461bfbc24b7f@changeid>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 05, 2022 at 04:14:30PM -0700, Douglas Anderson wrote:
> sc7280-herobrine based boards are specced to be able to access their
> SPI flash at 50 MHz with the drive strength of the pins set at 8. The
> drive strength is already set to 8 in "sc7280-herobrine.dtsi", so
> let's bump up the clock. The matching firmware change for this is at:
> 
> https://review.coreboot.org/c/coreboot/+/63948
> 
> NOTE: the firmware change isn't _required_ to make the kernel work at
> 50 MHz, it merely shows that the boards are known to work fine at 50
> MHz.
> 
> ALSO NOTE: this doesn't update the "sc7280-chrome-common.dtsi" file
> which is used by both herobrine boards and IDP. At the moment the IDP
> boards aren't configuring a drive strength of 8 and it seems safer to
> just leave them at the slower speed if they're already working.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
