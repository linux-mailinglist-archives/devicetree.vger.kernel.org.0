Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 688BB72A2E5
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 21:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbjFITLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 15:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjFITLS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 15:11:18 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A423592
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 12:11:17 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-bacbc7a2998so2036372276.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 12:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686337877; x=1688929877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BpGq09cML6l1j1qmnpO0b1T6C4SPf6pYp5Q8N/Z+6VA=;
        b=eH+0Rjcu6bRtHx5jaeJeJAMpnzjKJ1fCex9kI19L1LTWOB3/nvg4PHLJtzQevySslj
         ZozvBO+pcgZD+nGY9uMx+KR57EErxwebYT0552OsQXVqAxSFkBRnxUx6HSMEycTGdAEl
         BH7gm2Nbp4xR9UgAfDgNUEQo6VBjCX675rm7Hcv3SIIHb38FWMzA8mMdgLpeIfV9rhzu
         tvN6aCUxBSISSiloz64E6ZTSMjSekegFhjA/sx8S71Goc2zhaE5OItOVVvg0C6e1BSxL
         6Q8W6qXo2dC7RHZJbrnP0ytOI4a2EXIpJQWWRrjzb9fKV0I63mpZ2g+9pkzmRGTa1w9i
         4RnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686337877; x=1688929877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BpGq09cML6l1j1qmnpO0b1T6C4SPf6pYp5Q8N/Z+6VA=;
        b=QtBX44VvEXhn1eGAJ0PImJegeIHTtlTtdyMRBvrZ69MngZcypZiKwRXvvb+Y6Qr+X8
         K75C9RCXxwJOUBPGr59uDR2BvbtZF7AbNN7pbFzViBUM54OknWtTt3V5x41bZtS/oJML
         Tt/aCYQOUxvG9dtVeINCJbyNH/TYRObquu6ZvQwTpkdFhd/BluCAoFMzbelRIvLcCRjd
         Vw/nmAxxl7n06SD+cinwu4Fq48vFer08sisUu8fa5enKbI9sWCT5IlAJt7VjNoQz1cUO
         OksEP5AuuFdQfalRx8ryTfOjvmR5mi3D2ksCMU67OcUVjK18bQYqUr6Hs8aG+tp8RiH4
         5UOQ==
X-Gm-Message-State: AC+VfDxWNgUbi3cumU6RzNkfWHv6cMrK5qJhk60OBd7pLh6WdneJrQrq
        q2JIkRsERnWWdx08qeP1BYxOg2YFDBKFd3di8XAA9w==
X-Google-Smtp-Source: ACHHUZ6L0p8sv3W31Dv8e9hOh/hexLVZpr1A6n/e6h6fVJOZ3wlMI6ihreol07MLJ62NmuS5/LV6I+tEsPXelKsHVQg=
X-Received: by 2002:a05:6902:30d:b0:ba7:54ab:d676 with SMTP id
 b13-20020a056902030d00b00ba754abd676mr1708605ybs.63.1686337876998; Fri, 09
 Jun 2023 12:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230609140754.65158-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609140754.65158-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Jun 2023 21:11:06 +0200
Message-ID: <CACRpkdYP9+Uem9JAh=jjwtEL=Wt3vw-bbmaaHhJQ4whNXKNkKA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: drop unneeded quotes and use absolute
 /schemas path
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 9, 2023 at 4:07=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.  Also absolute path
> starting with /schemas is preferred.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
