Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AEC870CCED
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 23:53:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230345AbjEVVxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 17:53:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbjEVVxY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 17:53:24 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99B10DB
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 14:53:22 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-51f64817809so256438a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 14:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684792402; x=1687384402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wtDFKFxXn81rIkATtnxiRVVyqU/ttR6hoyrX7x4LYL8=;
        b=Qp9hvdaf5IJIU0ZrU0tnHtDIbx3h8oVtTk0Azixj/oFxOV7O9trk7+ii4fFFDna/5V
         SgGX9b1EtWJoMT9jDDQ8I7AHBkmSiEtJxU2qOVwuvNs+1Q9dgG4TCYz8DOhdoYYk8CVJ
         iI/ER31kVIrNHg/0BEeG7RY9twlvl/ULpsUXcTpG7HxG89TjlHatd14mKjeMSuFyg+iR
         cCLUBJfRscBQz5t5PzZZ9SsW2QTZo8qQA5WtS6nxqz3J+Sb4TvYKfil5S4hGINzO4ML2
         Vyd3BYbYIpovRuwtu2WH92Fyp7dwnZNhV6YKO5yYrEDZUSe4S/KBevY9FNI+UFevyoH6
         9u4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684792402; x=1687384402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wtDFKFxXn81rIkATtnxiRVVyqU/ttR6hoyrX7x4LYL8=;
        b=Wa/ATLpCY9lxIoc7mtaz9WNxj/D++k6q7rezM/jwOjo6AyBq4aZoJ3ZcMgAH9inCNv
         HvAuJeUhHOKxcpfG+IIx9cOax2yZgsPS8vqWET+4wEkPxujEftiryULJuhohTbETzGf7
         PiUsipzIGIxEe4CoJ5Q30O2wS6r9gZROpJGGhnkJ5I9pnB2rjtvA8QAljDQLgRcyxUnI
         QtkmxvnVOyS4wEblw4brDypo/+BKCurjXlTSB/ct6wGrz+AvOVtFeNi6h1pMTSlJaaF/
         L68LgU07xcry424DHK/oJSGmFRPcTEhlue5HpbJh+xBONj3wcFG4daJNDgCPRqxMjlyq
         0DtA==
X-Gm-Message-State: AC+VfDwpdzvL4sGOgQKbiRykWQDM7aAqLnILrWco7Cas9Yj/G2gtxEIL
        f0AJm+6mNnGNK3XRRKNFA8DGihCNmQKwxB3skkG2jyc+x0k=
X-Google-Smtp-Source: ACHHUZ4+igf9QwARJkcH2EoDp2P5pSoAuRTOcgXun2DpcDiuuLKxFCdXx6CxonLAGpNGiaYv3SBJuHdAs95DkCnXFYM=
X-Received: by 2002:a17:90a:e7c4:b0:255:3c7c:6767 with SMTP id
 kb4-20020a17090ae7c400b002553c7c6767mr8852359pjb.1.1684792401917; Mon, 22 May
 2023 14:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-3-festevam@gmail.com>
 <168479113748.3061858.13208114678317716697.robh@kernel.org>
In-Reply-To: <168479113748.3061858.13208114678317716697.robh@kernel.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 22 May 2023 18:53:10 -0300
Message-ID: <CAOMZO5BAoT=Mi_Ac_qD-eu37nJkBMpF5HJ54MbrAtPakw-BZCQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose Register
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, bhelgaas@google.com, marex@denx.de,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 22, 2023 at 6:32=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/s=
oc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:compatible:0: =
'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
>         From schema: /builds/robherring/dt-review-ci/linux/Documentation/=
devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

Same comment as in 2/5 applies here too:

Dependency: This depends on bd60d98a11da ("dt-bindings: display:
bridge: ldb: Adjust imx6sx entries"),
which is available on linux-next.

I missed adding such a comment here.
