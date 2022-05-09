Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7414151F2AB
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 04:30:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbiEICcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 22:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230370AbiEICb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 22:31:26 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF506832A
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 19:27:30 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id p8so11049752pfh.8
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 19:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=U3aNAbM8I+ZWALbCpblJglIHrWEFwVsku0LCm8q0TXw=;
        b=bWQ6elsRmVRougkRhVC48ZxYQz39s7b2EvoauAbMVhIhwRGiKUV9e78zuwsOlNivXM
         UqhfwasYgjW8ucV/oLyEA/o5giweA/xzQWl6YgOdR17YmQdIt8NOaaUhV0B1Fb2gPnnT
         uA7tFVfPKUdekS1Qz0/cDdwR4VE3qURe8IRd9WqlBsluLrOqnVvWP6VLTEco7FaPPLxP
         4txIuIE5BAXgoa18yOQkp77CqEi0/sOn5SzUSL6trzR5kEXtuNy4oZORjwJdzzCRfxB9
         ezCaZWPPi12+AhJxA2aam989TrZhmSwSgV3gMdG+tR9QRe1QUiUFZ5SuCgk9bhtZDH+1
         3N2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=U3aNAbM8I+ZWALbCpblJglIHrWEFwVsku0LCm8q0TXw=;
        b=wZrEDOzQ0jZp4mEjR27Trgguft5Sah4BDzDTsmBrZkbUZUalCcH0aQz8SLqzFOCCY5
         zs809CdtUhVrIWdInp0VPvg1iF+tZcP4xPBY1txI2FcdsCUU3evHBAb8OzAtmp5z1Kf5
         tliZH51IbgAyLXCXbUyDA4nOcjF/expaYAAy6v5OwOiB5u8oD5r68khcITKCV7Q2Dj4E
         o/E8yCEWHDMCSw+Z25iLC5A2mLEIw7LSJe7a5uHfQ5e5gE/ia8YpbPcq6k0xWfLaPK33
         EEiMK7A3F2q9k3AqRkn5UkWC800awjdkRy0QYB91ezP09kQuQdz6r4Z+YDZq6t3LatQC
         23TQ==
X-Gm-Message-State: AOAM531MI0R4i5BlcJy7U26ZI8DoRyVnRm4U4Gc/zxTCG3JB8v2s8mjZ
        SwBcN6WNNB3+3IvhNuUNd45l6HqR1ENhiBdQPBFz1A==
X-Google-Smtp-Source: ABdhPJxIvov+FYbYyJNoqxr/0XSGjEr4PbUkRCXh7qR7Q8mXkveolWuhN5u5sSFYomW0y+WRyG2Emg3YUroTFudGCdE=
X-Received: by 2002:a63:e416:0:b0:3c6:8d10:ea37 with SMTP id
 a22-20020a63e416000000b003c68d10ea37mr5778242pgi.319.1652063249915; Sun, 08
 May 2022 19:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220506213226.257859-1-nfraprado@collabora.com> <20220506213226.257859-2-nfraprado@collabora.com>
In-Reply-To: <20220506213226.257859-2-nfraprado@collabora.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 9 May 2022 10:27:18 +0800
Message-ID: <CA+Px+wXQjys8xvTSSJkLXoGp4yQnANbKWBtfuxiYi0UX6DH0jw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: remoteproc: mediatek: Make l1tcm reg
 exclusive to mt819x
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 7, 2022 at 5:32 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - mediatek,mt8192-scp
> +            - mediatek,mt8195-scp
> +    then:
> +      properties:
> +        reg:
> +          minItems: 3
> +          maxItems: 3
> +        reg-names:
> +          items:
> +            - const: sram
> +            - const: cfg
> +            - const: l1tcm

"l1tcm" should be optional.  Does it make more sense by using "minItems: 2"=
?
