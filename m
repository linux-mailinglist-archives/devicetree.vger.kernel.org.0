Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE5A46D029F
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 13:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbjC3LJ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 07:09:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231402AbjC3LJ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 07:09:58 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E55CCB8
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:09:57 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id c4so880552pjs.4
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680174597; x=1682766597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t0rkIZY3O/B/p2Ezr8FRIFleghoZRYVaBL+ys1poDDI=;
        b=B/r8lZqi8Rz2e1A6uRzfKVFPdomEky7k68pupksU1nDL317QoZDAvxBz+y6EyFNByS
         d2qTNTH/SIXT6lQvykgV4pptB+zsHnE2hbYmZ49SBhi6pv/qilPBpS65e04ibzzEp4xk
         Q0XixVz3VqFG0jp6oBAIuJqsFiYfN3ECoTVlrvJcm7LCWvE/bPpxrN5QZ8f/SeMQxdWB
         /4AO5dpV69fQRUK3U/jtu5ybDF+d4KmCPGh5X41o05U9laUgsVl/OI7PwTbq7umEYwP8
         kMPX6j5T9v3VYKjntbmVyScBotojEfGtgGcB1ZG9GkLvIp6wjqHBmjfgkKhUCLFfw5ul
         lPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680174597; x=1682766597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t0rkIZY3O/B/p2Ezr8FRIFleghoZRYVaBL+ys1poDDI=;
        b=36D2s8CEsqpIO+wGuSDQUfAH35Mwi+T8xphYEhGnjZQV1ZKljKqwj34YV6BwlKo3WP
         otazChW8+Ea98kPV2hzzWmHO9iaJ5BvAlzjgoDjqS+qrOVa+bXg6MEZZBtvyW+1pOA1L
         +m58tCU98CRfZp6qsbVEHvym7Mf0ZzN5gXFPcGEqnbj5DSpBLdvUrzNh4nLvNkR7u9cO
         h6NESWRbTBH5S6+UhGcH3LXTe79L8hz/c5Pif6zBPKUvGtzaO/sAbEdiBEkSlv17ovWs
         ZafyHy+opw5c+VHkgSksRn75N64aqoTLkmgFHIUgabgDbbqchw90ITnAV0pKY7nojXJT
         Eofg==
X-Gm-Message-State: AAQBX9cRd+bkC+2B6v68JqXI5DtswCDZEhbwF2zMRA+cwcdILj+iz2bk
        t5pBujLMd9LLUTH9Wnz22Ffi0gCf9ImacUfTelxeOFynKqu9IA==
X-Google-Smtp-Source: AKy350Zf/XyJ4RpHApDgYWO9FKBL8kuFndbl+vrb5NsTjg02WRHH32778W+DXM/1yQQzbdgHMQGRwXO9rXUFiy2/b/g=
X-Received: by 2002:a17:90a:690f:b0:23f:a26e:daa3 with SMTP id
 r15-20020a17090a690f00b0023fa26edaa3mr7068320pjj.9.1680174597353; Thu, 30 Mar
 2023 04:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230329144155.699196-1-festevam@gmail.com> <ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org>
 <CAMty3ZBHvR8OxgNgKG--TA_LQF41vjPiruHx-Pw2PwbjNKMFog@mail.gmail.com>
In-Reply-To: <CAMty3ZBHvR8OxgNgKG--TA_LQF41vjPiruHx-Pw2PwbjNKMFog@mail.gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 30 Mar 2023 08:09:44 -0300
Message-ID: <CAOMZO5BwSFZr7BDaU4KDkwvTcW0U28FeDDaF7eDrhgvgdN47Mg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add 'lane-polarities'
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        neil.armstrong@linaro.org, inki.dae@samsung.com, marex@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
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

Hi Jagan,

On Thu, Mar 30, 2023 at 4:55=E2=80=AFAM Jagan Teki <jagan@amarulasolutions.=
com> wrote:

> I have a previous iteration of this conversion. Can I resend it on top
> of drm-misc-next?
> https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutions=
.com/

I tried applying your patch against linux-next, but I get the following err=
or:

$ make dt_binding_check DT_SCHEMA_FILES=3Dsamsung,mipi-dsim.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
/home/fabio/linux-next/Documentation/devicetree/bindings/display/bridge/sam=
sung,mipi-dsim.yaml:
properties:samsung,power-domain:maxItems: False schema does not allow
1
hint: Scalar properties should not have array keywords
from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
  DTEX    Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsi=
m.example.dts
  DTC_CHK Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsi=
m.example.dtb

Could you please take a look?

Thanks
