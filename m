Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1ACA285860
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 05:02:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389714AbfHHDCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 23:02:36 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:33037 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389713AbfHHDCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 23:02:35 -0400
Received: by mail-pf1-f193.google.com with SMTP id g2so43226767pfq.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 20:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=/Z7L8SyshdubRcyIY95repgYfqLBFE4FKfh7eq8hsWQ=;
        b=VMkDtAtLTGvihLldZdjOKfErDSzMhon6bH5G3BdL+lkNsLL3dhRGrdijMSDj0i4/7d
         I4trJ2cPBcfQ9b3hUyrfivjLrr4sWMt8cYYyyVntaeqVNyAvZ5dxivLyOgVXVvDiPk6c
         jkqX9k20VGWNQKfp3L0eAGSlUB+86FaeW6LxVEayaRqcWTMWv0F3CGeFSxefboLbNnsR
         S1XHjj1FrqZi3qhOfdimenhnFDt052N8RMB9eb8BKX6yHcHBDlefcglRUp7sKokpTRMx
         sd9CmtD2VJcXM8d2+Wd2EqZ/6xbNLNJMIZshGNVOVfMuYEXBx85IGCNog25/90slfPuc
         dtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=/Z7L8SyshdubRcyIY95repgYfqLBFE4FKfh7eq8hsWQ=;
        b=NNBKh0u280M1KUwoqX4e0cvXeQsJ/fXgTv7WtWSLsBC86VaPWaBiS9/P+CDcoHMd9A
         U45Tb8XSFnlDQ5WW0+INxO/q8cy9plpSpQshf6g2IdFOKg5L8/UJP3ix5eJgX8RI2OGs
         MkcS9RbZNtUIVbnUHOQEpY63uEVrgBppPPysV+cMwG3W4tp0fvqJ6lA3j59AVmRjDBlp
         Fjrh2N82xdP7YBpcDq53NNeFMN1damWBihQcQccMZVADN55Ef2ZJYc3+GaosMIEE4udu
         9HcNrz7b5ubhbsIZkVcze3S1EN397dEcrAQdDOQ2XSnAjKGJmTZ7Tyj3UC4dRIKGsaZQ
         UkIQ==
X-Gm-Message-State: APjAAAUZN3cTnsxD2dgRHEmkmF7SpnqsNOPAlnsWBCvkx+eHh5yGVF1H
        UH71D70rx1JZQnM+36ufhVtQs7xzZLG5Hw==
X-Google-Smtp-Source: APXvYqylJQrZTaVlqLyT+6q2Nr1Mjd7x1ZREstnHaNOUKd1r3XvtkoAaiLRMfJ80fzLmRpUIRf0/6A==
X-Received: by 2002:a62:1d8f:: with SMTP id d137mr13114157pfd.207.1565233355043;
        Wed, 07 Aug 2019 20:02:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.googlemail.com with ESMTPSA id q126sm52203296pfb.56.2019.08.07.20.02.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Aug 2019 20:02:34 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        "moderated list\:ARM\/FREESCALE IMX \/ MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B based S922X SoC
In-Reply-To: <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com> <20190731124000.22072-3-narmstrong@baylibre.com> <7hblx3gua3.fsf@baylibre.com> <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
Date:   Wed, 07 Aug 2019 20:02:33 -0700
Message-ID: <7h7e7ofjg6.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rob Herring <robh@kernel.org> writes:

> On Mon, Aug 5, 2019 at 3:46 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>>
>> > Add a specific compatible for the Amlogic G12B family based S922X SoC
>> > to differentiate with the A311D SoC from the same family.
>> >
>> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> > ---
>> >  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>> >  1 file changed, 1 insertion(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > index 325c6fd3566d..3c3bc806cd23 100644
>> > --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > @@ -139,6 +139,7 @@ properties:
>> >          items:
>> >            - enum:
>> >                - hardkernel,odroid-n2
>> > +          - const: amlogic,s922x
>> >            - const: amlogic,g12b
>>
>> nit: in previous binding docs, we were trying to keep these sorted
>> alphabetically.  I'll reorder the new "s922x" after "g12b" when
>> applying.
>
> No, this is not documentation ordering. It's the order compatible
> strings must be in.

Ah, thanks for clarifying,

Kevin
