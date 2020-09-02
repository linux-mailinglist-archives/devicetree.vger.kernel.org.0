Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DAF025B3B6
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 20:29:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbgIBS3N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 14:29:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:42586 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726124AbgIBS3N (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Sep 2020 14:29:13 -0400
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id AA887207EA
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 18:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599071352;
        bh=+z+Ye1t/Ezpg3mcCoGI3xdkvtQs/AAApX31W1h4xglE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=0u9RnZRpflGLdjzp8fwT/eAU+/O5dJB+KUFbtMiRJEKquAZwKMoyHinNZiSghRCtK
         o+5gJB8z7RFt0ahfwtllHu/uFW4GSz5e6k1ytM+n4dBOS6FsZ3tEaAs4tLXg2U88/C
         EJ0hxdhIvRXCcCMNQflHV3NEorvPrHO4oDwpFGS8=
Received: by mail-ot1-f42.google.com with SMTP id a65so138437otc.8
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 11:29:12 -0700 (PDT)
X-Gm-Message-State: AOAM532D1pREvV1DTxMH5mF3bFrx0rS9nfIMW+RfXKGgDLQ01YcI7xrF
        k/1n23noW3Dd/qwU1WpwcNxzSkGVfYRjy36ICQ==
X-Google-Smtp-Source: ABdhPJwx6EGJNaIk87ezTTRXYXtWyfMWvyZxdtrnwGAxQFNwzLBfaiXapMo6nRfjqc1LGUzA10+u8B3oL7XtdrnPwQo=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr1911945otp.129.1599071351985;
 Wed, 02 Sep 2020 11:29:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200828095115.GA18030@pi3> <CAL_JsqLKKagxyJPRK=_Xze7jWYAsqSBPbyZC3CLBeDZp5H49hQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLKKagxyJPRK=_Xze7jWYAsqSBPbyZC3CLBeDZp5H49hQ@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 2 Sep 2020 12:29:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLLPmirYSLqOuvoXrmxA7ST_iG01xL6ypqSraZCbR-ADw@mail.gmail.com>
Message-ID: <CAL_JsqLLPmirYSLqOuvoXrmxA7ST_iG01xL6ypqSraZCbR-ADw@mail.gmail.com>
Subject: Re: dtschema v2020.08.1 json.decoder.JSONDecodeError error
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 4:58 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Aug 28, 2020 at 3:51 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Hi Rob,
> >
> > I am trying dt_bindings_check with on top of next-20200826 with dtschema
> > v2020.08.01 and got errors on all schemas:
> >
> > =======

Did you miss some of the traceback?:

Traceback (most recent call last):
  File "/home/rob/.local/lib/python3.6/site-packages/jsonschema-3.2.0-py3.6.egg/jsonschema/validators.py",
line 774,
 in resolve_from_url
    document = self.store[url]
  File "/home/rob/.local/lib/python3.6/site-packages/jsonschema-3.2.0-py3.6.egg/jsonschema/_utils.py",
line 22, in _
_getitem__
    return self.store[self.normalize(uri)]
KeyError: 'https://protect2.fireeye.com/url?k=59835ffc-05905d01-59822c67-0cc47a336902-306bd2691e458c36&q=1&u=http%3A
%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23'


I get this and then the same traceback as you. This is now fixed in -next.

Rob
