Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2FA76D031
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 16:38:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232617AbjHBOiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 10:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234141AbjHBOiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 10:38:10 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDB826AF
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 07:38:07 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3a38953c928so5352236b6e.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 07:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690987086; x=1691591886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8nmftj9H6QNMjKvC/PHkZC+FCS8/x2xMcYkBxSq4Jqc=;
        b=Nq1cPX/iQ+SjG++rAIUe4TQ0nEJvKktHyDdQygPW6XGYm6QdZ22VYdWX3Sxia4lv/R
         YJuSNgBmBsiEtFjKvURlOY+apmhMQxa649KhDz3pit05rVnP0pFw6e83dyFOJJjEQzNM
         0vzLw+06LIheQacaf8f6rgsRruNeKoQQOtflwEXzm7ZJ6Z8vIxrKXinDr/ocV89/pImb
         /JrlZC6lPd7gqvpQrU2n55PHJKSeqQGNf+2cgjc/TscYTTu/dEGp5KDuSJtkvjVeamYh
         YQk7ZrAMcc0ajRcpiq2ELwz1ytTmjz3kH0rHjga+I055BHA+jcwpeDD7u+ByaQLXgddf
         mlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690987086; x=1691591886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nmftj9H6QNMjKvC/PHkZC+FCS8/x2xMcYkBxSq4Jqc=;
        b=aK10ZcCsaUwBwmXtoWgZJbgDqJHgEHk2Q7xsAKcXkC9aRJ/ZDljwAvWeub5IPuUCJb
         yA616fdvjrS9BmVFfnZaZEtZScv4uUNHEmfxA8FxG4q2IqIVruKrIWhM6+v+Js2C7x6z
         Em3ONhS0pqmR0Il3L/cWNE+lFn9c6RRTJG0d/W0pu9Bsp5PMxCfCXVcinvssk0+2sItg
         pzSXs63oP2UKL89PuAqqxwRsOzN7jp3iSGV6e9w4qw/ZxJt9/2Vyy46vsuUeyRhKNFiG
         3k7LVDuxWTB2qGvEhnSrSGcXt5fnaozzWRbVGflYV1LCppxmuwO+KnULjGLhEnqSGQIZ
         R3ag==
X-Gm-Message-State: ABy/qLbD9kqViBVxhORAtCBeslz4O++Gy08sCO5BAsKHdxjd7Gg+vCor
        pwIAQrAmTiqcb/yjHmvzdiFzTCoj1jAe1JbmAhDexQ==
X-Google-Smtp-Source: APBJJlEzTjl6RKml+LdRCmbwAb2hGX3y19EwwY+i1muMiAb8Luqi1vw3YUfBLtHOB1vz1+aCnlEV0Yzu1qxjbKqjsqw=
X-Received: by 2002:a05:6808:3010:b0:3a3:ed41:5ab with SMTP id
 ay16-20020a056808301000b003a3ed4105abmr18113315oib.9.1690987086380; Wed, 02
 Aug 2023 07:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230731110012.2913742-1-jagan@edgeble.ai> <20230731110012.2913742-6-jagan@edgeble.ai>
 <20230801-residue-tractor-5c63e4447f2c@spud>
In-Reply-To: <20230801-residue-tractor-5c63e4447f2c@spud>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 2 Aug 2023 20:07:55 +0530
Message-ID: <CA+VMnFyh-ctPbf_j=CEXxPNKY+sUymV64Sdqqs-kY7dTojQYUA@mail.gmail.com>
Subject: Re: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document rv1126 vop
To:     Conor Dooley <conor@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Aug 2023 at 02:37, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Jul 31, 2023 at 04:30:03PM +0530, Jagan Teki wrote:
> > Document the VOP for Rockchip RV1126.
> >
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>
> There's no commentary here about compatibility with other, existing,
> devices nor did you CC me on the rest of the series. How am I supposed
> to know if appending to enum is the right thing to do?

I had past comments not to add all people in the entire series and add
one relevant developer on respective patches. On that note, I tried to
CC the developers only involved in the respective areas. But, you are
CCed to the DT patch that affected this binding.
"[PATCH 10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support"

Please let me know if I missed anything.

Thanks,
Jagan.
