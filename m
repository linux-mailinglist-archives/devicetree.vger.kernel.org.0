Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF7AC6B38C5
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230078AbjCJIdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:33:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230293AbjCJIcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:32:53 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F261AFAAD5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:32:51 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id i6so4493870ybu.8
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGISnq5xkVWK5LT2JVsgqxuhy4xoBK3JcrHgA241UAI=;
        b=ak8lWlzu5y9a+zJOsjY7KzQmFrYgBecgksoM52Xv2TZcx/YKfSs9TKPQHSamkwIsyV
         +GU6dcZGqVTmFgfO9RtNi9xmaD0p/Fa/awiulN7ZnYrJyYqk//xkUB67piYZXQ7IexGn
         iczok+BzBAYKdTJglkLgGVi9pPsELtSXndvvkt+jOYrzAxdW0GSzNP/dwPzLjhFCw1z8
         HRzmnE4PANl6X4wYWy6u91UFwfiWHZdDeDEBHdgOHmwAA3XTmZZouL0dBu2HT38L6Reg
         nht28+ngAJI1E0nCAAkk144Uo1PZIfRfxRcHKje1fQC/e6ilYRRAMykDVJjjVe0dHkRh
         gabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGISnq5xkVWK5LT2JVsgqxuhy4xoBK3JcrHgA241UAI=;
        b=FTiEIxkxVcmP/IODzxP3OLpvLMENrVBeoiZyIsKKfDMqPajP3EiLpFDPC1HkJlayYe
         EpGA8JJQCt8s813SUTw83lKjJQMoF6uJphFQjxh0MrUhmv2QXziensxfkFxj95uGFUDU
         6BwoFFTQDR096a75HR16OPv2y8CAPi2M4+zXLja0twa0B2Ok2c3jUxywbCvU7ZB5SJQs
         /d1fMMxaluraKX+/1KbsAmORuwzxpM2mivhkU/3aJIn5rk2J5CTu2IK015YdG0pLYrQ8
         ejHdo8/pnypxSoh6w3DCByDNwrFGnPDxoujyLRgpchDU4LXYyqJjpcE/wSybMWN62XOC
         rGsg==
X-Gm-Message-State: AO0yUKVruHuA4nXPHWN6aN6HnjUoM6Hbt6Mp2TRJVQA2Wgblbd5FHCOS
        McumioSxTZHS/0xt110vTakQ7+/jxctTRghrwPXmRw==
X-Google-Smtp-Source: AK7set8EJr41YgKA3LJXcPYZtW907BFNk/K6rMy8aatXcKASl7nQqj3tFSCeiP313rmAyEQEnN1lYFOqs173zcgr7H0=
X-Received: by 2002:a5b:647:0:b0:932:8dcd:3a13 with SMTP id
 o7-20020a5b0647000000b009328dcd3a13mr15295220ybq.5.1678437171134; Fri, 10 Mar
 2023 00:32:51 -0800 (PST)
MIME-Version: 1.0
References: <20230309225041.477440-1-sre@kernel.org> <20230309225041.477440-11-sre@kernel.org>
In-Reply-To: <20230309225041.477440-11-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 09:32:39 +0100
Message-ID: <CACRpkdaWMQnWDEmKy1WU+xe9His-QDMvpyj5447vrU-=Hsx=MQ@mail.gmail.com>
Subject: Re: [PATCHv1 10/11] power: supply: generic-adc-battery: add DT support
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 11:50=E2=80=AFPM Sebastian Reichel <sre@kernel.org> =
wrote:

> This adds full DT support to the driver. Because of the previous
> changes just adding a compatible value is enough.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
