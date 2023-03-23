Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07B4C6C6D3F
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 17:19:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231166AbjCWQTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 12:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231837AbjCWQTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 12:19:35 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C58034C38
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 09:19:33 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id qe8-20020a17090b4f8800b0023f07253a2cso2590387pjb.3
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 09:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679588373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3pPadh0WQWE7CfuhAjjVK1173TDGHsKgbzRbBDJmviI=;
        b=DHTPzI8lnFNvSWVRq0HHp0vByxyBadlFlKzaDH25oJTLASSx8YH7ro0fZJ8+6Xm7tt
         f3ts8kFTAoksAoKlva29M51gCHF6et1cuz0IXG6bIchInLU6JwKKBYyHOPxX8UYI8w4N
         4iFAjyouJB8AZ+AzNHgnE0wi19Gh+KCz4ScrzMJ1g0Jk0hjF+5Hp5OlPEy83HAhmHctL
         SIB1Ug8IBqaWZM/lxPinBvEfraHhOzcOV0hzNTyR+zcJZjfDpRLZBWtC2l0Xp/vjiqv/
         F3qlmchP4lBO0DkYnXWVgGfVpZMB293NCM1noBDJB9IP5FtkIE7OBuLYhVhOWJFzIaR0
         5f7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679588373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3pPadh0WQWE7CfuhAjjVK1173TDGHsKgbzRbBDJmviI=;
        b=HJyAOdh8qj+U750Dkz+qjqvx7DesHpSpemyVwy8LUVriUAkv1WPafThO3TnY5SZySJ
         CqtfC29L3LVEbG+pHWf0lRnJAPdPDzgIrfxJKwAZdT73h23drrCF3nDqDIWs+2x4u0r6
         +vfxdrSuIFz9A/VQQsl+LGRhavC7rtzm/PXYAjDRHFo+MDrRlg2ea9/cm57R//Rdhm3+
         BHtV+pP3Jra2FeSlw+usi/+GGDa2ikaO923Da5t1a204MqXyNAXO4k8nlyWCw+l25irI
         zCaTcFZ3tnD6JTP89g981HBS8nGhUM/NaHeMZ0qm4M3UENW+RMqOBwMX1pPCVXoUNfzM
         cfKw==
X-Gm-Message-State: AO0yUKVVbl3m8g/od1ujPhiXWC1SNweZg1OhQaoGOYrTxDZd4LR7D2G4
        DcJD4JfrB3ODeGbPs32XVFzwdguLRexU6+CbfxI=
X-Google-Smtp-Source: AK7set9T6lz54ngCeEu/2RZOaP/BD9VTTUJYAIcDPInaplWQY575l0u3hUGcaOeCcIrQ0egqKz1i9Okudcg0oo734Wo=
X-Received: by 2002:a17:90a:4d01:b0:23b:36cc:f347 with SMTP id
 c1-20020a17090a4d0100b0023b36ccf347mr2672656pjg.9.1679588373136; Thu, 23 Mar
 2023 09:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230317094725.48305-1-marex@denx.de>
In-Reply-To: <20230317094725.48305-1-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 23 Mar 2023 13:19:21 -0300
Message-ID: <CAOMZO5CadD-F-FvNxxfLra8Yu0cL9oK29G3Gvp4sM5kCa=L2_Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus
 DHCOM on PDK3
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 6:47=E2=80=AFAM Marek Vasut <marex@denx.de> wrote:
>
> Add DT compatible string for DH electronics i.MX8M Plus DHCOM on PDK3
> evaluation board into YAML DT binding document. This setup is a general
> purpose SoM evaluation board.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
