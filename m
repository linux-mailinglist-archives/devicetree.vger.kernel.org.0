Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF6C66F0916
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 18:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244000AbjD0QG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 12:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244021AbjD0QG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 12:06:26 -0400
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7C440CF
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 09:06:24 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6a438f0d9c9so6537430a34.1
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 09:06:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682611583; x=1685203583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UL+TgMFr2dGX/yxyLBzT5i3pWvxRT4g3cHsVhb/RPR0=;
        b=eFIm9OYEp7pzT9yaRwIoyNzBnf3Lkyz18fm53LTZjY52/3fTxEzzgeIFnb/fhg7vVO
         pzh21SpNYnoPrWF7T5xy2Byi/wmYCT1KL02xdLjGAorYztblZGja/r9I6KmV0rL6RNJc
         ofBzN/LHzlW09dWuXY5m4iCnATnqoAEaJtcAytn6QVQouNtV0pnrU+pgwm/SlNnisdu/
         RoNM2mtgiF7jKXz3At0nseAAWDBuFGF+Ic3WHffREy0MpC0MgVIADw+vewRHq5vrWgXV
         Pdjbnf6dLT6229zUvto6hKqk8dwPVZYFrV5drCtFasQieKsIzk+EWx9yUEoDvQUDfSdP
         eofQ==
X-Gm-Message-State: AC+VfDzqSBb1bebmfxB60TQm/s8Kkamgy9M3X+JTK3zUUt3PIS8v2UMQ
        fUjN/kQ52moLcu0hUtF6jszY4l3Gdw==
X-Google-Smtp-Source: ACHHUZ4ed5DlUjKWgsvo/1LufvyDhn1AGC/56srInr73TfXBi9O3ZzpDEiDjI0gMtFXFXVV/m1uxkw==
X-Received: by 2002:a05:6830:1e93:b0:6a5:ea63:b9f4 with SMTP id n19-20020a0568301e9300b006a5ea63b9f4mr1048223otr.15.1682611583617;
        Thu, 27 Apr 2023 09:06:23 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m7-20020a0568301e6700b006a5e0165d3esm8202046otr.19.2023.04.27.09.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 09:06:23 -0700 (PDT)
Received: (nullmailer pid 3107383 invoked by uid 1000);
        Thu, 27 Apr 2023 16:06:22 -0000
Date:   Thu, 27 Apr 2023 11:06:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Soha Jin <soha@lohu.info>, palmer@dabbelt.com,
        Wende Tan <twd2.me@gmail.com>, conor@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1 2/2] dt-bindings: riscv: drop invalid comment about
 riscv,isa lower-case reasoning
Message-ID: <168261158214.3107331.4410018416833510357.robh@kernel.org>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-payphone-nautical-7098d15035c8@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-payphone-nautical-7098d15035c8@wendy>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 26 Apr 2023 11:43:25 +0100, Conor Dooley wrote:
> "Ease of parsing" may have been the initial argument for keeping this
> string in lower-case, but parsers may have been written that expect
> lower-case only.
> For example, the one in released kernels currently does not behave
> correctly for multi-letter extensions that begin with a capital letter.
> Allowing upper-case here brings about no benefit but would break
> compatibility between new devicetrees and older kernels.
> 
> Drop the comment to avoid confusing people.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

