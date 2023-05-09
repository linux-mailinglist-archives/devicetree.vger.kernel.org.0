Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4706FBF10
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 08:13:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233835AbjEIGNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 02:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233401AbjEIGNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 02:13:39 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DBA493C1
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 23:13:38 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bc1612940so10235702a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 23:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683612817; x=1686204817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yy1bnxONg+wwiiP6uKM33WWPud1zRtBGR21Fn/jN2EM=;
        b=WFoep9EWJKeb9JxyM4rVFgSC7qidYIbBvw4NUHWAvRoqsu2b5z855y6oO7N61KxYr+
         J8N1bqNDp4vVWPo+PQOeVnVB+ZlK7VbojgNE3sKM6y1Rsa0mgAoZ/6XiRcB+THwmVIfH
         wrUVYNfEH6QR9xnZom3qRgWkMo5l7zIu6mlOsGPe/W5bfwtl4JXwntT64Bf4VCfK7S63
         B4hbk6I11i3gzj086D8P4uVT64ykWqHv6EXlx8peUNwLD52YMPJ7/tQ/i1r39S+mOS3Y
         3ouJw1ZI11fCIdO1y3fsHH0BFWL2zs8ZsHj6hMb8hJ2C6hwZ/mjdgJtyOl9SWkZXSXXz
         sigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683612817; x=1686204817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yy1bnxONg+wwiiP6uKM33WWPud1zRtBGR21Fn/jN2EM=;
        b=MeKZUkOOEzy3XWOumS8E4t+y4U2Vd29lhO/T0WlPA0SJ63LiprpH94VPftlpLOHST2
         aGUExJlbNP//DJ6kpwut2o1oDyZ9aEe+EgMLyaLvtnS8fHZvsiz+wzSB70oaEXy4mVOC
         Hq1cbDK9eFUbZgXQ+ItBCO76ZNxBiXSScawFpv03M2uHPSYKT/9+p6inB4hCTxwiqlJ/
         9QMj+wNUmvx1roIsODn1SkJNoFqnRKs1vzzf38YG1UzFhBGKuCnQkxDSNAjmawZXuxK8
         L1rvTxupNwPUPmB/OXNve4YV+cL8WloURUy+dgEnlqNH7Ynm0yy4KxK2Eq/3E0ppy8xE
         PwEw==
X-Gm-Message-State: AC+VfDw4/zEI3yKWrJcp8wlnf+W8wVmhE4PHyejolibgvGoQgpnjYmFi
        D8xJqSAsvetALJQyQp59pWayjr/Ust4WDAgzmcE=
X-Google-Smtp-Source: ACHHUZ5K2lDOZ55VJjClCZvXPCey7Pl33EDZmzUP/w8F9xRvsJV5JUvHFUyq3pEiANq0Ke2vW4W7CQ==
X-Received: by 2002:a17:906:dc93:b0:965:4b44:6f5a with SMTP id cs19-20020a170906dc9300b009654b446f5amr11425421ejc.10.1683612816820;
        Mon, 08 May 2023 23:13:36 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id hv7-20020a17090760c700b00965be665811sm900429ejc.2.2023.05.08.23.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 23:13:36 -0700 (PDT)
Date:   Tue, 9 May 2023 08:13:33 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     David Lin <CTLIN0@nuvoton.com>
Cc:     YHCHuang@nuvoton.com, ctlin0.linux@gmail.com, broonie@kernel.org,
        KCHSU0@nuvoton.com, SJLIN0@nuvoton.com,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, WTLI@nuvoton.com
Subject: Re: [PATCH] ASoC: dt-bindings: nau8825: Convert to dtschema
Message-ID: <20230509061333.t7wzu2fl3iatalea@krzk-bin>
References: <20230509051054.480412-1-CTLIN0@nuvoton.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230509051054.480412-1-CTLIN0@nuvoton.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 09 May 2023 13:10:55 +0800, David Lin wrote:
> Convert the NAU8825 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---
>  .../devicetree/bindings/sound/nau8825.txt     | 111 ---------
>  .../bindings/sound/nuvoton,nau8825.yaml       | 220 ++++++++++++++++++
>  2 files changed, 220 insertions(+), 111 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/nau8825.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml:172:4: [warning] wrong indentation: expected 4 but found 3 (indentation)
./Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml:177:4: [warning] wrong indentation: expected 4 but found 3 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/nuvoton,nau8825.example.dtb: nau8825@1a: Unevaluated properties are not allowed ('interrupts' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml

See https://patchwork.ozlabs.org/patch/1778742

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
