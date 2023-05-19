Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7660709B86
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 17:46:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232212AbjESPqB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 11:46:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231438AbjESPqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 11:46:00 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54C0A1B3
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 08:45:56 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2534fe570cdso475803a91.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 08:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684511156; x=1687103156;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNLwU6QjsXvcntb+KwAtaQ7bcNz0ymT7Ul3Tq22egeE=;
        b=DZa6faR8MQne0Yix58iHxw7HUL3nY2Klby0y8xcUYHAbDdyrIkLMCHTKtYi1cH1iqG
         ldHAguiODuNb8QwDZsP8oImGkhmQghr4+PZawPpwM5Gs7YCkqP++zYM3xZdiz2zGo3Bx
         6hymF04PckFHT3Ko0eBKp1QifaObBA3eI/gAG3yZOGvXGy2QZv+DtU1XklrEvkIyA8k8
         1AqntKIb3w7Vy2TrpwciJbBaDbGhi2QoTZqL7p4AREy9IoxRlJPINUFSCsyKp21VV7u5
         Bq39gScgnkrWyb83Jr7Nl/uI3qX01p+xgeSjJBJWv7N9bZ7/bMp/6WTEQu3FW7bFkiKc
         TBNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684511156; x=1687103156;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dNLwU6QjsXvcntb+KwAtaQ7bcNz0ymT7Ul3Tq22egeE=;
        b=iaqr/AP+tYenrxfAjosliv13DXztBSAMe6OL/8apwmR4ROW87LbwxtW3IgE7+5/ZpS
         WpXceFz8tp438dGwd4nkutJLAgePXfB1cMDG8p5h6j59qclQSyeF85p7uRJntDXzK5E6
         3c40yrpt1zZqMpcr8iRLvgbR8HWd0hccPHpPBGGab4PLmF9oov2w5BTonXOqmCADUZHM
         4/9Pz2EeJ9tFb7prDgui/PJ8ZLqHEkmQISmJlXwnAkqWnf4fuexQ9HHkzsjH2PO8bo4i
         amHVw+i+2UWMnbULpVdy3v8smzrwz/LBp4iuhaFWSKVdm36nQKKnPaJXxP5fTjz4zMqT
         Joyw==
X-Gm-Message-State: AC+VfDyLrvyne6lZsCm5EUU6zdmXenCH04lexYXCeCkWv4lwYHRTB54D
        fnd2y2EVlnN5U6Ne9y8tMLAssMv3FlBzGus1NeCzbZbprfw=
X-Google-Smtp-Source: ACHHUZ6gcUXoPHhyeAdjjMg42aanQJ9VDaeDxBHIPGxTB7eZA9IvVFEzyywDA2+Bo2ndt6rCxQCr+yUCm/dbPlTgX3Y=
X-Received: by 2002:a17:90b:1e44:b0:253:407f:2506 with SMTP id
 pi4-20020a17090b1e4400b00253407f2506mr2891161pjb.2.1684511155579; Fri, 19 May
 2023 08:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230519125236.352050-1-festevam@gmail.com> <20230519125236.352050-2-festevam@gmail.com>
 <168450267115.3446911.4219667976082310726.robh@kernel.org>
In-Reply-To: <168450267115.3446911.4219667976082310726.robh@kernel.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 19 May 2023 12:45:44 -0300
Message-ID: <CAOMZO5CM_MBF+_V1=9hL-UDB9nnxCckcMFLWwAv_FusuLuMcPg@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose Register
To:     Rob Herring <robh@kernel.org>
Cc:     conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Fri, May 19, 2023 at 10:24=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:

> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/s=
oc/imx/fsl,imx6sx-gpr.example.dtb: iomuxc-gpr@20e4000: bridge@18:compatible=
:0: 'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
>         From schema: /builds/robherring/dt-review-ci/linux/Documentation/=
devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202305=
19125236.352050-2-festevam@gmail.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.

This patch is against linux-next.

6.4-rc1 does not contain f85f2ce57783 ("dt-bindings: display: bridge:
ldb: Add an i.MX6SX entry"), which
is a pre-requisite for this series.

'make DT_CHECKER_FLAGS=3D-m dt_binding_check' does not show errors for
this patch series against linux-next.
