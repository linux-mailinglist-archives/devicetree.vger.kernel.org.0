Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4416A5A4FD0
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 17:07:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiH2PHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 11:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbiH2PHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 11:07:07 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4678982F96
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 08:07:06 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u9so16325230ejy.5
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 08:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=NkjtLGODakxw34RE1ZSCHsppEOgNT9LnIfBodvI5KF0=;
        b=fdvDTlOSk7+R063mphDzc2gTmV8LTm+g93undrgWcmR/VgD6QbDtnXVEw+dxIZ/8nR
         xMoTTkAalTtTS9HV1GX7uSkp2czJriwlDUDK37whez6z/OAlT1OsBIJqka+DR8t0+Cge
         mzP2FRAXlC74Y2mkb9sa+2e0gfIgaNazvcdRf/ZerZmZliy6Z3hLp6Oj4enGV19rA21D
         1btbZEZ5NywIIa8648wDvGaYsl4HiBtonAQsZJJ1YRGX7Pboa+SNDnp5YXdz9trdu8iD
         BMw0gV0nDJ3ak+IkqKD4sYfuNqrXD2cKwTM3PCRfrLbY4j8UqzG01Eaa/ApT78sN7qPS
         S0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=NkjtLGODakxw34RE1ZSCHsppEOgNT9LnIfBodvI5KF0=;
        b=sMvG1Kpn+IU3MpPs4S7y6dx2VHZ89kn4rEwQHTEbcfyF22SANZyc1QRP9V0ZqnBMOn
         F1Mdsap860VS332BaxSXOK+oI+OzI8CKl+jLzEMrrtzKF0RCvCTzkht4BRiA840QM2hB
         9s0feqm694FE1jDgtBx1wnls6io67yuaytdfiljusSctfTIuxvB6PSxADVdiX7GFzXgV
         NM775NMESIf+tH0ST1HZtnWig7UU2gxUkNIDtBc9+wx3Sq/INzo1Hgc7FN90YjRmXxmO
         XeGM3A27x47TMuoy2LjUBWrLI0G2bk6DzLeBs4IDV6Y8nbnRPgAy9/UxYmLAzfQWsmxT
         X98A==
X-Gm-Message-State: ACgBeo2MRCmrUOFd/8kldNViSKV2CsBdtGe2Hb+lDIX37cL9B7O7R1fk
        P+gpuoDlx0VvphTsMYyEuf57tblyDuVCYwFzj2vKRw==
X-Google-Smtp-Source: AA6agR7MIb19AtTjOyeksEjWUxq8gktFe79/+VMQqBQ/V9UYwiymcHXnHZzTOjVyarRcq0QfPghC9876jcMKi8NBcrc=
X-Received: by 2002:a17:907:6092:b0:731:59f0:49ac with SMTP id
 ht18-20020a170907609200b0073159f049acmr13841200ejc.383.1661785624682; Mon, 29
 Aug 2022 08:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220530150548.1236307-1-m.felsch@pengutronix.de> <20220726091228.nvvyzab7wyzrnfrr@pengutronix.de>
In-Reply-To: <20220726091228.nvvyzab7wyzrnfrr@pengutronix.de>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 29 Aug 2022 17:06:53 +0200
Message-ID: <CAG3jFyt6A2L0Feeibv_76tVhQ_PjRpowQ=CeJ9FaOOshrEWLuQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] TI SN65DSI83 Features
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     laurent.pinchart@ideasonboard.com, jernej.skrabec@gmail.com,
        jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech, devicetree@vger.kernel.org,
        kernel@pengutronix.de, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Marco,

Sorry about the slow reply.

This series no longer applies on drm-misc-next. Can you rebase this
series and send it out a v2?


Rob.
