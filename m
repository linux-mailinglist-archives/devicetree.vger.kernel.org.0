Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 641AA5BF7B8
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbiIUHbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229673AbiIUHbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:31:35 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D077644F
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:31:35 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id h1-20020a4aa741000000b004756c611188so759581oom.4
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=JLaD/2XH7Q65O8RM76XiddYprLtEsWsnehUu/mQFLT8=;
        b=m8p18imIzcYgUHEKEoFHFZpdoHv04FKv1z/i8TN81uate1do5EzgoVZNu6j1jtue+/
         GoWCD2lnhBb9ug37Y1nZhUCEp6FRxjxCvM7pZSwPo9DKdA3Ldtdwz58UBDgG8jRInMx8
         TRE5TA/aWd1kHX0u1JLYsbjy5ZqwbfuhoO99bXlbOPDiqP/QN3uhsAJm+s/LvK8ztD59
         a3g1f9ECBTEuDyejC+brkrkuJvDY0Q5PdDsQBYT/DXsbkcF+GhN72340GUqfToTmhtU8
         jC0VwVz5z4tC3cSiJ8LKf4ehkrYRuiMiMCoqz8p4z8lrNq5SRadvAVqBg4vBj3ACs0om
         a4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=JLaD/2XH7Q65O8RM76XiddYprLtEsWsnehUu/mQFLT8=;
        b=swDZFLhPDHwDyQi5xy7RvwsJUCqS1RWuejAF3YOEP2Ilfee05W4+M8sVr7tn5NWF75
         OIgmHF0hdFn14pyTEfs7K7JQXGe3I0nzShW85gkqJWe1y1jR2VWuuzxVuyarRX1pD9nX
         ssRMnvWxJYxuSUzJYFynMQh64/xv6a7Q0MrxkIrrroSNjgAaoyekfL6CbDKEAoIuqlBy
         etwRGi0rc7Lhqqcix0ddB60Dk4cPRMGeM+DWGpvjT/Pew/04H2c0pyRPSv3F/t1AsCnc
         MDB43ukR8byPu5/Bt7CfdFRR+4gpVHJM4nP10/Ekbo8Nv8iRJtqVS2EWFYHOOSw1Pkz3
         BoaQ==
X-Gm-Message-State: ACrzQf3Zlfd8KKvdv5ExIIi2gPUFoiRil/jG+s2anDvzOXJigKtZajnJ
        hZyrprQG7NOT7ZlXwn909WrxaD3g/uWjaOP5PYg=
X-Google-Smtp-Source: AMsMyM6oqxIuCP9cDonXHIZd1Dcwq+Rtr1EXM/PdxkjGeMmeBknPQ5Vt4r23e9hhVan64I9BpGqy5yHhNdy7MDcxGcs=
X-Received: by 2002:a4a:be06:0:b0:472:9d27:695e with SMTP id
 l6-20020a4abe06000000b004729d27695emr10015176oop.36.1663745494338; Wed, 21
 Sep 2022 00:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220921072817.611223-1-sergio.paracuellos@gmail.com> <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org>
In-Reply-To: <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 09:31:22 +0200
Message-ID: <CAMhs-H9oYY7k_fQT64BM5M5x6pwQkjM-bDuLCBYNk3EBoUrcDQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: spi: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 21, 2022 at 9:29 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/09/2022 09:28, Sergio Paracuellos wrote:
> > SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> > There are some additions to the binding that were not in the original
> > file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> > properly match both dts nodes in tree we need to add to the schema
> > 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> > 'reset-names' use 'spi' as string so maintain that as const in
> > the schema.
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v3:
> > - Add Krzysztof's Reviewed-by tag.
>
> There's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.

Understood, thanks for letting me know :)

Best regards,
    Sergio Paracuellos

>
> Best regards,
> Krzysztof
