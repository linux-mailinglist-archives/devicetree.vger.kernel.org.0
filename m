Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7683640CD2B
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 21:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231497AbhIOT2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 15:28:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231575AbhIOT2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 15:28:15 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2C82C061764
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 12:26:56 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id n27so5724241oij.0
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 12:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=o/xLkGlhrSnpCqv+HEwTNRKoItyS4LasgozuRU4ni1o=;
        b=AvsLqD+ImZ3uG21Z85q9lNII8aPV/FqVgO1IUBdXtaed29+o/L4jPx8h2xxrNvZPNZ
         /AqAaoUsRfDPKhJegTmB5uaHM+phiDSUEtA9+4ewEGnBJfLTz6+DfPPN7KFy0S+kZvTH
         xt6LBjfee3cPZwN1+ScwgNDTcJbEx0PfLPLi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=o/xLkGlhrSnpCqv+HEwTNRKoItyS4LasgozuRU4ni1o=;
        b=oK8UgNZQOjiZKijJYzxA3dtINih9PwPt2RlHIKTl+mM9cD/b2MVKcnOv0jg0JufLh2
         GcgnFUFGjj05OdS95QwmcEBw70dbMJZRxHOf2Sc/W1fJXx/HC9pnGBfR+K7tDql48JeZ
         Tx582ZUKpNy+wYceWg7QwECU1X3reUqK8mfBc91Y06Q3ecQNfFHwnw6vy5clyVJyUQEt
         /c1KW0kVRHj+zFBKHSDYYQsRg2rZ9b0V8r1Bv7T32gDXnPkm5BqnrH4VS5UQ8eEu9M5f
         7qLbFgy/0F4YZWpGesQBM0QorfHIJR+2HLLlKYYw+IzxzW15TW5IfS6yAmiruxyp9Wqc
         yRBQ==
X-Gm-Message-State: AOAM532fZlGa+rAtIyhicU5W6V3/HL4qZKdHpIP72rhmz49Dd3FovAME
        L4U45Rd7scbVEB0f+Gt73Byvf4wgKGzB4oKG2ItCXQ==
X-Google-Smtp-Source: ABdhPJwFkrl8F6Ej21HTUvXwucYyETWWwd0o6RXQlIIKy4y8Ocqoi0zQx97NR+cpDDHoED2PMDRevSzOS/rZyXj3qnQ=
X-Received: by 2002:aca:2310:: with SMTP id e16mr1006542oie.64.1631734016098;
 Wed, 15 Sep 2021 12:26:56 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Sep 2021 12:26:55 -0700
MIME-Version: 1.0
In-Reply-To: <e1e84488-2af5-2272-010a-474788a498a3@codeaurora.org>
References: <1631539062-28577-1-git-send-email-srivasam@codeaurora.org>
 <1631539062-28577-2-git-send-email-srivasam@codeaurora.org>
 <CAE-0n50=ABP+fs1U3JjiqMSKphfxFsZBqQQYwVH2o_iOE1Wu_g@mail.gmail.com> <e1e84488-2af5-2272-010a-474788a498a3@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Sep 2021 12:26:55 -0700
Message-ID: <CAE-0n50wVDvL+f19abt9o9d0GvuAD+AanCwHozoyGfEFWKWz_g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: google: dt-bindings: Add sc7280-herobrine
 machine bindings
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-09-15 04:15:43)
>
> On 9/14/2021 1:21 AM, Stephen Boyd wrote:
> > Quoting Srinivasa Rao Mandadapu (2021-09-13 06:17:41)
> >> diff --git a/Documentation/devicetree/bindings/sound/google,sc7280-herobrine.yaml b/Documentation/devicetree/bindings/sound/google,sc7280-herobrine.yaml
> >> new file mode 100644
> >> index 0000000..e0d705f
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/sound/google,sc7280-herobrine.yaml
> >> +patternProperties:
> >> +  "^dai-link@[0-9a-f]$":
> >> +    description:
> >> +      Each subnode represents a dai link. Subnodes of each dai links would be
> >> +      cpu/codec dais.
> >> +
> >> +    type: object
> >> +
> >> +    properties:
> >> +      link-name:
> >> +        description: Indicates dai-link name and PCM stream name.
> >> +        $ref: /schemas/types.yaml#/definitions/string
> >> +        maxItems: 1
> >> +
> >> +      reg:
> >> +        maxItems: 1
> >> +        description: dai link address.
> >> +
> >> +      cpu:
> >> +        description: Holds subnode which indicates cpu dai.
> >> +        type: object
> >> +        properties:
> >> +          sound-dai: true
> > Shouldn't sound-dai be required?
> Sorry. I didn't get your Query. You mean in below "required:" properties
> need to add sound-dai also?

I'd expect there to be a required: list for the 'cpu' and 'codec'
objects that says sound-dai, unless that is implicit somehow. I'm
definitely not an expert in the DT yaml, but I suspect two more
'required:' sections are needed so that 'sound-dai' isn't an optional
property.
