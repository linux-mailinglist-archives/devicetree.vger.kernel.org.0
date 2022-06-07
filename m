Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D53885423B2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379181AbiFHAtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:49:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1586631AbiFGXve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 19:51:34 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25E2928DC1C
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 15:43:09 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id a21-20020a9d4715000000b0060bfaac6899so5126260otf.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 15:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2fKoWW6NOg5lxeXgt4oK9futpOxTdvNtK6BCDtPAU98=;
        b=SolS7aXqDUswytp1fIPeZ8E1O3SQf6wC7YBU78MIsnycc/aht7NFwCUavHoI6an47Y
         TUuuc48GSuMVJYOpJ14Z5Y+qsODzrZYwDUObm1f8e4XyCvphW5hPQrTajc6XPdZKzCb5
         LlCje7mUunZrQIvSOEXGVBawzYxgCxwUeMkYQ+SkapFy5RW4cxafIQosi3FzQhYE/G6u
         aqQW/J4nFuZ2gbrnANdIzSDKP1fwBuWLt40+SkGe1cGhRDeMOojyaJPQG64uf6DJ/buU
         Fi9TXW46Rs2RP/CenV0BX0mwXdkI4o+sHrahqRUdSVkraBny2sYLjM9Hs90H4S/+7FYl
         li8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2fKoWW6NOg5lxeXgt4oK9futpOxTdvNtK6BCDtPAU98=;
        b=sRr137Rvve4ktCc5cwKEWc1m2FMhhV+NLizlrjl32IKNjv39DCTWQmCAHaLhTHtywP
         Xb6bqLuvy/tGXfNWYAFyPEeBwc2ZcjZnSv4PzejYrOlUJWkeXfc4YSnkPTjxx4wRp5IA
         ASPzA94zVKsM/8f39U0zai3ITkpz+YdfgJ8dHg1y3ilxxa5/PD6klcMZHRIiQk2kHWIt
         Bkiz0fCnsyPHLPVj8+TD68tOF/DRLQXa2gBK32n8G3vYRpqMm+8HlwtUuGifn3sho1cR
         kW72JjKSrnwdhENLh4y1KrVjLuL9qMd8pGigAB4TFFc4O5Q7rIyzRUimfqY8JpuLEn1O
         bQLw==
X-Gm-Message-State: AOAM531b2qnz71iOIDV99bwBA1oyViLXyzOTw+0aapg/Kn2v2fniZ0fH
        51SMObMgbmwfrrtEYoKuP9GKbg==
X-Google-Smtp-Source: ABdhPJySCSkrxVapnCB2pbL3mqq6c/Ha6taOEPIvN6imZnQFuRSIOn++8Bc839jTB8lMMNU1tRmMyA==
X-Received: by 2002:a05:6830:9c2:b0:606:1e0a:cc8d with SMTP id y2-20020a05683009c200b006061e0acc8dmr13468851ott.265.1654641787842;
        Tue, 07 Jun 2022 15:43:07 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u13-20020a056871008d00b000f5d4e5b9a0sm8903477oaa.2.2022.06.07.15.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 15:43:07 -0700 (PDT)
Date:   Tue, 7 Jun 2022 15:45:30 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] phy: qcom-qmp: Add USB3 5NM QMP UNI registers
Message-ID: <Yp/VCg3UznbLKLuk@ripper>
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
 <20220607213543.4057620-3-bjorn.andersson@linaro.org>
 <f16657a3-15e5-f7d6-1f2b-58e2ea83dddc@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f16657a3-15e5-f7d6-1f2b-58e2ea83dddc@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 07 Jun 14:58 PDT 2022, Dmitry Baryshkov wrote:
> On 08/06/2022 00:35, Bjorn Andersson wrote:
[..]
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_RESERVED_1			0x1c0
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_MODE_OPERATION_STATUS		0x1c4
> 
> These defines look completely compatible with the existing ones in the
> QSERDES_V5_COM_ namespace. Please use them instead.
> 

Can you please confirm that all these constants are exactly the same as
the existing V5 entries?

[..]
> > +/* Module: USB3_UNI_PCS_USB3_PCIE_USB3_UNI_PCS_USB3 */
> > +#define USB3_V5_5NM_UNI_PCS_USB3_POWER_STATE_CONFIG1		0x00
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x04
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x0c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x10
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL		0x18
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_TX_ECSTART			0x1c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_PER_TIMER_VAL		0x20
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_TX_END_CNT_U3_START		0x24
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_CONFIG1			0x28
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x2c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x30
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x34
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2		0x38
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_DFE_TIME_S2		0x3c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x48
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ARCVR_DTCT_CM_DLY			0x4c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x50
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ALFPS_DEGLITCH_VAL		0x54
> > +#define USB3_V5_5NM_UNI_PCS_USB3_SIGDET_STARTUP_TIMER_VAL		0x58
> > +#define USB3_V5_5NM_UNI_PCS_USB3_TEST_CONTROL			0x5c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXTERMINATION_DLY_SEL		0x60
> 
> These look like QPHY_V5_PCS_USB3, but without additional 0x300 offset. I'd
> suggest modifying qcom-qmp-phy-usb.c to allocate another register space for
> pcs_usb and updating QPHY_V4_PCS_USB3_foo / QPHY_V5_PCS_USB3_foo defines to
> remove this offset.
> 
> Afterwards most if not all constants from this header can be merged into
> phy-qcom-qmp.h I do not think that it makes sense to split this header at
> this moment. The QSERDES_COM/_TX/_RX/_PCS defines are common to all PHY
> types.
> 

You might be right, but I spent considerable time debugging the combo
phy (which is version 5.0.0) and in the end it turned out that it's not
the same offsets.

I really would prefer that we stop haphazardly try to fit things into
the phy-qcom-qmp.h with version numbers that we essentially make up
base, when Qualcomm dumps the register layout for each generation in
their downstream kernel.

Regards,
Bjorn
