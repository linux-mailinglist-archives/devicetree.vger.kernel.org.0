Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0524E25B45D
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 21:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728253AbgIBTWQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 15:22:16 -0400
Received: from mail.kernel.org ([198.145.29.99]:33794 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726567AbgIBTWO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Sep 2020 15:22:14 -0400
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0B6FC207EA
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 19:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599074534;
        bh=MoxyjGubKVcLokYUQvkOYUQjKjieOpc0NUk6iwWWGKc=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=B/zk8gjZhgfZyjvGHAaLLccIRltZFrypGvL7pGDsJNkJZL4k8kdPFYLvYezVM7j5i
         NYD4b6ttQwOWcGSM/gO+F0+jCnOdU167PQHXklJgP234OMm/iN+oQya1QybDwFD7k3
         SIowdO6UKjifdxRLYmwXnqrAPdT9DO0BBRrvGYcM=
Received: by mail-ej1-f54.google.com with SMTP id i22so298440eja.5
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 12:22:13 -0700 (PDT)
X-Gm-Message-State: AOAM5307yVqrXbLK/DH7Ky9Zfs0PKzWagkhkKF7YT3Ffx6jRSPinLlmK
        vMT0vRjMwSeO9vSWK6gXpmOC4hDAde+aQbC5+GI=
X-Google-Smtp-Source: ABdhPJyNVuttNfK3ifzv8byRMWJKwyLfbF9LUg/os4vLdl62YycCIwfC4Y046bFT2wOGyvKZE1Xw+jphkUeyMt98/kA=
X-Received: by 2002:a17:906:3b4b:: with SMTP id h11mr1507119ejf.381.1599074532647;
 Wed, 02 Sep 2020 12:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200828095115.GA18030@pi3> <CAL_JsqLKKagxyJPRK=_Xze7jWYAsqSBPbyZC3CLBeDZp5H49hQ@mail.gmail.com>
 <CAL_JsqLLPmirYSLqOuvoXrmxA7ST_iG01xL6ypqSraZCbR-ADw@mail.gmail.com>
In-Reply-To: <CAL_JsqLLPmirYSLqOuvoXrmxA7ST_iG01xL6ypqSraZCbR-ADw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
Date:   Wed, 2 Sep 2020 21:22:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfbkouwnTRyFYOv7bOcGrPJzLZLPm40gZJtkWVbzC7mFw@mail.gmail.com>
Message-ID: <CAJKOXPfbkouwnTRyFYOv7bOcGrPJzLZLPm40gZJtkWVbzC7mFw@mail.gmail.com>
Subject: Re: dtschema v2020.08.1 json.decoder.JSONDecodeError error
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Sep 2020 at 20:29, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Aug 28, 2020 at 4:58 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Aug 28, 2020 at 3:51 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > I am trying dt_bindings_check with on top of next-20200826 with dtschema
> > > v2020.08.01 and got errors on all schemas:
> > >
> > > =======
>
> Did you miss some of the traceback?:
>
> Traceback (most recent call last):
>   File "/home/rob/.local/lib/python3.6/site-packages/jsonschema-3.2.0-py3.6.egg/jsonschema/validators.py",
> line 774,
>  in resolve_from_url
>     document = self.store[url]
>   File "/home/rob/.local/lib/python3.6/site-packages/jsonschema-3.2.0-py3.6.egg/jsonschema/_utils.py",
> line 22, in _
> _getitem__
>     return self.store[self.normalize(uri)]
> KeyError: 'https://protect2.fireeye.com/url?k=59835ffc-05905d01-59822c67-0cc47a336902-306bd2691e458c36&q=1&u=http%3A
> %2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23'

No, I think I did not have it.

> I get this and then the same traceback as you. This is now fixed in -next.

Yes, I noticed it today, thanks!

Best regards,
Krzysztof
