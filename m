Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD4C8256341
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 00:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbgH1W7M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 18:59:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:36456 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726536AbgH1W7M (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 Aug 2020 18:59:12 -0400
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6D0A9207DA
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 22:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598655551;
        bh=Rie8awG8Ju1llyZ+xBh1qthfe8dvOp5LXDt7W4Ycgvg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=hCnkfFo5wb3IOy9OvGA9u8Qtzbk0Jv4YQNJMo8NMOiq5W4KpRt9COaZ4jw0YFoXKm
         ByeqWyS2ZlVmrdoCMJuoh7KGp9NqQszImIwblckpTxXB6NFPcY8fe9Y9tqVgLUabn0
         3tBHjq0d/xFKBfpgwn4i/Ru+gPFG8mu1Pm73YbdE=
Received: by mail-oi1-f178.google.com with SMTP id z195so2072096oia.6
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 15:59:11 -0700 (PDT)
X-Gm-Message-State: AOAM531+JJ/14/hW5tNoA3IHS7wyExFqCycXB8xWEU4+b9gMiQSOBqSA
        k5O7wLmocr/M6JixiOPdMBZflAIx2g69BbBckA==
X-Google-Smtp-Source: ABdhPJxUqqfVr9W2waCR8LJe1ZsNUZqAE7l7U7GnXZXf9gfvWlUVH/oUJnR0Tppn/Z+XZcb+8bbhUobAWHqUJTjV9aM=
X-Received: by 2002:aca:4cc7:: with SMTP id z190mr788795oia.147.1598655550794;
 Fri, 28 Aug 2020 15:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200828095115.GA18030@pi3>
In-Reply-To: <20200828095115.GA18030@pi3>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 28 Aug 2020 16:58:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLKKagxyJPRK=_Xze7jWYAsqSBPbyZC3CLBeDZp5H49hQ@mail.gmail.com>
Message-ID: <CAL_JsqLKKagxyJPRK=_Xze7jWYAsqSBPbyZC3CLBeDZp5H49hQ@mail.gmail.com>
Subject: Re: dtschema v2020.08.1 json.decoder.JSONDecodeError error
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 3:51 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Hi Rob,
>
> I am trying dt_bindings_check with on top of next-20200826 with dtschema
> v2020.08.01 and got errors on all schemas:
>
> =======
> Traceback (most recent call last):
>   File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 777, in resolve_from_url
>     document = self.resolve_remote(url)
>   File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 860, in resolve_remote
>     result = requests.get(uri).json()
>   File "/home/krzk/.local/lib/python3.5/site-packages/requests/models.py", line 897, in json
>     return complexjson.loads(self.text, **kwargs)
>   File "/usr/lib/python3.5/json/__init__.py", line 319, in loads
>     return _default_decoder.decode(s)
>   File "/usr/lib/python3.5/json/decoder.py", line 339, in decode
>   DTEX    Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.example.dts
>     obj, end = self.raw_decode(s, idx=_w(s, 0).end())
>   File "/usr/lib/python3.5/json/decoder.py", line 357, in raw_decode
>     raise JSONDecodeError("Expecting value", s, err.value) from None
> json.decoder.JSONDecodeError: Expecting value: line 1 column 1 (char 0)
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "/home/krzk/.local/bin/dt-doc-validate", line 67, in <module>
>     ret = check_doc(f)
>   File "/home/krzk/.local/bin/dt-doc-validate", line 33, in check_doc
>     for error in sorted(dtschema.DTValidator.iter_schema_errors(testtree), key=lambda e: e.linecol):
>   File "/home/krzk/.local/lib/python3.5/site-packages/dtschema/lib.py", line 663, in iter_schema_errors
>     meta_schema = cls.resolver.resolve_from_url(schema['$schema'])
>   File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 779, in resolve_from_url
>     raise exceptions.RefResolutionError(exc)
> jsonschema.exceptions.RefResolutionError: Expecting value: line 1 column 1 (char 0)
> =======
>
>
> Python v3.5.2
> Ubuntu 16.04
>
> Direct dependencies of dtschema updated via pip3.

Not sure. I'm on version 2.0.9 for the json module which I guess is
what comes with python 3.8 (I'm on ubuntu 20.04).

Nothing jumps out at me looking at the module history:
https://github.com/python/cpython/commits/master/Lib/json

I'll try some older versions.

Rob
