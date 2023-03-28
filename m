Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A04356CC9C5
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 19:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbjC1R5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 13:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbjC1R5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 13:57:07 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3EB7B446
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:57:06 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id p204so16152307ybc.12
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680026226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVMjvkUiQpIYhxok9nUkY/T7s0aJ2xwVUiGCBB2sdwo=;
        b=EFPZM1Py1Dnl1l6LPwbu9pqTYrzH8qNSmgr221CZCa4FklAzrki+HClymGX5wIWR2q
         8/+lFyXnpI1tF/G65VL6zkCcw8Fqwocikg2eqACXDUa3TRWeOpb/0tt+R43UgqrcILEK
         YSb57HSDYgG2pNs/pC+MJXsiZlklna94FHeaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680026226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVMjvkUiQpIYhxok9nUkY/T7s0aJ2xwVUiGCBB2sdwo=;
        b=We2l58pDCpRsnpG3EGjtpmPU/IMwdNxXXOLDsGCkXPok38rst5ZbjtHCW/2l1ceXjI
         oG+VujVwMydm+LB0SpPc2zrXAVNUQDg68Dxcxe9CFVySjm1NZMf3GrRU2Rjy28B15ydK
         o2iVd5N3Sy/78GH41A91VNFoHDJePlA7nCNnmRDrlGh5a1iVTSYTX/q3/SP3F8x68qKq
         sn2HKs+DHO610iPpAx2wa7mzG2GlDWQ7FOYxBX8KJ453JnmSP7JUsAs7fPGCoTXEvwfi
         uLm3+aqkh4b3uOGCuFizl85Q/a4xnBymsFbwcd3XPXjRi22/YBANfgbhEQuuIwT8zxHQ
         hLOQ==
X-Gm-Message-State: AAQBX9d/sLfioGS/MOPiKtvFyTKabLgo10SqXWRyxTBKZ9q8F68qNIPe
        6z7S/W8pNndlLV4W9kBGgrd/ke9l+3MY7hlsv6lTGxxgzhFpCecBars=
X-Google-Smtp-Source: AKy350ZW2rVwU9TY3Aic68rt7ThnXakit0m4ZvpacupHoz8LSjOf507tB8hwNX+1n2ZAbLJbWHkZa/sHYDfi7IuecIk=
X-Received: by 2002:a25:d954:0:b0:b7d:9e72:d792 with SMTP id
 q81-20020a25d954000000b00b7d9e72d792mr1556367ybg.5.1680026226171; Tue, 28 Mar
 2023 10:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org> <20230326204224.80181-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326204224.80181-4-krzysztof.kozlowski@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 28 Mar 2023 23:26:54 +0530
Message-ID: <CAMty3ZBznkToP9_zq_LdaoxXcPps9c6tMD4fRH0=YpS98C=swQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: display: sitronix,st7701: document port
 and rotation
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 2:12=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Panels are supposed to have one port (defined in panel-common.yaml
> binding) and can have also rotation:
>
>   rk3326-odroid-go3.dtb: panel@0: 'port', 'rotation' do not match any of =
the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
