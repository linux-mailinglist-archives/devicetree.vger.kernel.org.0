Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB69E6862D1
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 10:30:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231874AbjBAJaE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 04:30:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbjBAJ37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 04:29:59 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C7C5D11D
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 01:29:58 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id d132so21563092ybb.5
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 01:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KhoolhMckxqWrv235zYZtPF4tzr8Frco5OS8VwOn2is=;
        b=pLY0/9QKC1kVar9Ri59+RLs67IzOAeA3gq5tohm8s5M07NOiKDT/bN959IoCB+WRLQ
         qzyuOfZ6Zdu/JMgc4CU5rhOTOhTdaqVOhfYWExYiqL6d/TtfP9fhDV2l4qcT/QTCt1U2
         q8ilAQFJ+hryST6wUIGJkASyf/G/mIBybt7XdF4oWfdLOSegF8M4itmpRfZIb5nwqdCF
         bly3vlAd5/LPMsoOLSuhxC0dRjATNTXsLa66qfMpHceIJ1y+QvRPlB8pmy/DZtEB2A75
         INNgAv9tFDJ/4e0dCV7hW3oCSB4y1GtG2QhvJH+Bwnfh4X6qqqBb9JTmEj5PlGEVHqNg
         vWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KhoolhMckxqWrv235zYZtPF4tzr8Frco5OS8VwOn2is=;
        b=Rou6ufESxEbFPzqkWgdBdNWhPLrHy0prFi2wM7uoTKsXQmVnGIGNM1Pn7GX6V1Oke4
         yb1XTdlf8WZxIjB5bOp/6YoeDxvrf9Q7D8mXsxe/EPkyMn5juNzGcvNe9fgqYFmLyi+Z
         +dygcOkRszBCWB4tUQ9NX7pBS/KVwoVoh268/xjaetFZakI95YTFIkvMrZD43r4JDzu+
         ld7gRGqn8+4ClQJROm1p96QOs9byh6BpC487Vni73Mh5VmyoXphah3mI39/NY5x16tkt
         PlN1AzRjoYXTixvrEQA1iCOhlO4adOwQHcSvtwzW9OoTnkXa3Mt1aDSYu9pH0/e3fy4c
         JCoA==
X-Gm-Message-State: AO0yUKVSkIpqVz8op6+THFfVd17msBvdzMY2CCwA4zo01T4bhsWS9Tux
        ayRg5yxtTCvuiRgNexUjBUvdArIU0WLuLIqawr9vZQ==
X-Google-Smtp-Source: AK7set+tuVRLZ4AdP759wfl1fZTnbBKhFP0FPnAP3xxxUrZJxw2TvTMOScsMLNI+hFXGM9nye6SOMa0E7/3wCeDwUsc=
X-Received: by 2002:a25:910:0:b0:83e:bd63:6dd7 with SMTP id
 16-20020a250910000000b0083ebd636dd7mr227209ybj.24.1675243797830; Wed, 01 Feb
 2023 01:29:57 -0800 (PST)
MIME-Version: 1.0
References: <20230123211758.563383-1-jic23@kernel.org> <20230123211758.563383-13-jic23@kernel.org>
 <6abc3265-75a2-1fa6-803e-6066a81b8ec5@linaro.org> <20230124094344.00003e67@Huawei.com>
In-Reply-To: <20230124094344.00003e67@Huawei.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 1 Feb 2023 10:29:46 +0100
Message-ID: <CACRpkdZrgLQsR-BkT-FG4HvJv3fvQ1ETRcaJYAXahOcM5mcYOw@mail.gmail.com>
Subject: Re: [PATCH 12/12] dt-bindings: iio: accel: Add ADIS16203 Inclinometer
To:     Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Barry Song <baohua@kernel.org>
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

On Tue, Jan 24, 2023 at 10:43 AM Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:

> > This won't work. It's an list. You need:
> > items:
> >   enum:
> >      .....
>
> Gah. I'm still rubbish at writing these things. I guess I just
> don't do them often enough.

No the dtschema YAML is just really hard. Don't beat yourself up about it.

Yours,
Linus Walleij
