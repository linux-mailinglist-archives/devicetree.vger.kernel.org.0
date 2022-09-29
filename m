Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ED805EEDE2
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 08:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234340AbiI2G30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 02:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230341AbiI2G3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 02:29:25 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 361F712E430
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:29:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id 13so722362ejn.3
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9sMUB+ufmO/jB91L+Cnkm2YRBNvfPUGNsKA+nqPeMho=;
        b=Smds3S9XWiIBc98H2XCEGckTjhx/FBf1xzTVoxJqjvdxbov9Zg4ycsowcLPDcUScM0
         NI/E7gh0g0jf4rjXTY55tBUfle+7azTt6UETy1ZrthkrKwFskTdJ3T9+7uToDdoCgVJk
         y5gKkkzUZLrIyq/9U1SMchrSQDKaA0mcUEv2tvLLJcXX2/Wu+Q8zzpdnrNkXQBPVNo65
         8N0GInKtZctPo6ADCU4/Gqi+Oj6lEKRuxHEX/KjHivtk1qlA/erg3F7FRGCLljU/xgAf
         W6JetwSWMFg+i2NaTA9I6pyDgVcxF17uBcxFfdAVvuYVY+L4ZKYBSSUTtTqR3RbHhcZb
         t/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9sMUB+ufmO/jB91L+Cnkm2YRBNvfPUGNsKA+nqPeMho=;
        b=JhFkuno5SGJNQ/mJOLQzo5diOjcwriO4D9hZXyrhVCGIZcl2HYLZhO58Ajd2EFe38S
         e7lQgJlgGxYqHdTEr9HQPloUSb9u4K92aD/9vQhDaRDfBDrhEJTGGvxRwtHQXJBVvp41
         9a753bV3ej4tsPdbDmWtHtj7EaRfBZyEIXuMJQziWZQQxQTErIvmErmw16zxA2yN16fs
         ebmIY3bxCpXPObjhwuitXLJHt2fatcYxTXzp+3NVxPzx72Jycb/HT+/QfFwPLM83IQ5I
         WPzoxxhaSDrnT9vGpeL5xbz3tg3o4IFNCRhbh8tieMSoPD4ztk+7KXU4sYB4emysonpB
         kLcQ==
X-Gm-Message-State: ACrzQf0yFPBrT5LXAxdX/ywxKMz5aaiAk1TYUtnKKbJQNqwSikmK2yCF
        hVrPMXQiDyMhxFFuv7cEGiwwLWJXfrvqBtDaPKzDCw==
X-Google-Smtp-Source: AMsMyM5ZtREGqxKZKOpbmXG+0pP6ay1c4N1+fNX5kP26dzgQ5hEt5obAeIIeMF0AAim5INRGtCyTdjPD/2tdO9yci7s=
X-Received: by 2002:a17:907:a05:b0:77b:b538:6476 with SMTP id
 bb5-20020a1709070a0500b0077bb5386476mr1430811ejc.324.1664432962669; Wed, 28
 Sep 2022 23:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220925220319.12572-1-zev@bewilderbeest.net>
In-Reply-To: <20220925220319.12572-1-zev@bewilderbeest.net>
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
Date:   Thu, 29 Sep 2022 08:29:19 +0200
Message-ID: <CALNFmy1tnrJWKwGjdGOjjqB9XDS2DhAPq1rcDPgMdY3xXNoXAw@mail.gmail.com>
Subject: Re: [PATCH 0/3] regulator: Add DT support for regulator-output connectors
To:     Zev Weiss <zev@bewilderbeest.net>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Naresh Solanki <naresh.solanki@9elements.com>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Mike Rapoport <rppt@kernel.org>, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zev,
Thanks for picking this up.
I cannot answer the first question, but the second:
It's sufficient for us to just have one supply per userspace-consumer instance.

The optional property is fine and could be useful in the future.

Regards,
Patrick

On Mon, Sep 26, 2022 at 12:04 AM Zev Weiss <zev@bewilderbeest.net> wrote:
>
> Hello,
>
> This series is another attempt at implementing support for
> userspace-controlled regulator-supplied power outputs.  This is an
> important feature for some kinds of BMC (baseboard management
> controller) systems where the BMC provides an operator with manual
> control of a set of DC power outputs.
>
> As in a broadly similar patchset that was recently almost merged [0],
> this takes the approach of providing support by extending the existing
> userspace-consumer regulator driver.  A couple questions about the
> userspace-consumer driver came up along the way, however.
>
> First, how (if at all) is it currently being used?  It appears the
> last in-tree use of it was removed a bit over two years ago in commit
> 9d3239147d6d ("ARM: pxa: remove Compulab pxa2xx boards").  Aside from
> just adding DT support I've made a couple small tweaks to the driver
> in patch 3 that I hope are compatible with any current usage, but
> without any extant examples to look at it's kind of hard to say.
>
> Second, how critical is its support for controlling multiple
> regulators?  (i.e. its use of regulator_bulk_data and friends instead
> of a single struct regulator.)  As far as I can see every in-tree use
> of it that's ever existed has used num_supplies = 1.  If it's not
> important to retain, patch 1 of this series could be supplanted by one
> that instead simplifies the driver slightly by removing that
> functionality.
>
> The DT binding added in patch 2 is very similar to one I posted in a
> previous patchset that had an R-B from Rob [1], but has had some minor
> rewording and gained one new (optional) property.
>
> Laxman, Naresh, Patrick -- please let me know if there are any aspects
> of this implementation that would be incompatible with your needs.
>
>
> Thanks,
> Zev
>
> [0] https://lore.kernel.org/all/20220707081826.953449-4-Naresh.Solanki@9elements.com/
> [1] https://lore.kernel.org/linux-kernel/20220505232557.10936-2-zev@bewilderbeest.net/
>
> Zev Weiss (3):
>   regulator: devres: Add devm_regulator_bulk_get_exclusive()
>   dt-bindings: regulator: Add regulator-output binding
>   regulator: userspace-consumer: Handle regulator-output DT nodes
>
>  .../bindings/regulator/regulator-output.yaml  | 47 +++++++++++++
>  drivers/regulator/core.c                      | 42 +++++++-----
>  drivers/regulator/devres.c                    | 66 ++++++++++++++-----
>  drivers/regulator/internal.h                  |  2 +
>  drivers/regulator/userspace-consumer.c        | 43 ++++++++++--
>  include/linux/regulator/consumer.h            |  2 +
>  include/linux/regulator/userspace-consumer.h  |  1 +
>  7 files changed, 162 insertions(+), 41 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/regulator-output.yaml
>
> --
> 2.37.3
>
