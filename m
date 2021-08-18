Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19D4A3F0B08
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 20:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbhHRS3O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 14:29:14 -0400
Received: from mail.kernel.org ([198.145.29.99]:34128 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229448AbhHRS3N (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 14:29:13 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C6DB9610FD
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 18:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629311318;
        bh=CQawXBz1AfPb4oe2wFxVPHcShmGB3Ksr0publsZQ4LI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=I/hdYec1ZGiUuameblcjpRaPK83Pb7ZUktrPGhtZDaNXJMBicrDq2mYQhqUgnLS3O
         IjK+3Q3RX5Iqd1xUk54lBwFyZY8Qk0kdZrQTi9GgTzixVinOENH5tJvubOGrNjvIdc
         nA3Q0IQR8dsDb0rQRc8YO+luk6dvklIePJXIj12vqnzN4gWJP2qH/ouaepMUTFWm0G
         Js7MjFZ5GLKmAuJ31zfBDRdxKq8gGCiNttuDzBihVTObNBQFJlZVAvII1F2FxQ5rAR
         LeAnR04JlpOLhKvEa13oEYHHN1nfrhzF2l1oju/I2oWtzNihEOste9yO8/7mDxoP/p
         jOtcKtGbaI2Pw==
Received: by mail-ed1-f49.google.com with SMTP id g21so4575828edw.4
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 11:28:38 -0700 (PDT)
X-Gm-Message-State: AOAM530VdkMXVRskKkmerX05AkPLRB7QD7BWNXWeGZbDgR7WB3Xl+WOO
        A93fujWRu6RkqXr9JY3FbggchYOpVbyBGNPtrA==
X-Google-Smtp-Source: ABdhPJw1up3j+acIxUgzsJoQUnSkExQ9zXXbtlj0t6uT6IhKQsWlmSx2vypWRAH5EsK2mzkFXA6lp30Sjf9t7+XG1Ko=
X-Received: by 2002:a05:6402:1215:: with SMTP id c21mr11749465edw.137.1629311317425;
 Wed, 18 Aug 2021 11:28:37 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR03MB6359D948CF6D8C2A8FF9757099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
In-Reply-To: <SJ0PR03MB6359D948CF6D8C2A8FF9757099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 18 Aug 2021 13:28:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKRzx8dsCMErir6Lm1f6HF-nru-sHUp6+eaE9Y_5d5psQ@mail.gmail.com>
Message-ID: <CAL_JsqKRzx8dsCMErir6Lm1f6HF-nru-sHUp6+eaE9Y_5d5psQ@mail.gmail.com>
Subject: Re: Express that at least one patternProperties is required
To:     "Sa, Nuno" <Nuno.Sa@analog.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 6:03 AM Sa, Nuno <Nuno.Sa@analog.com> wrote:
>
> Hi Rob,
>
> I'm preparing a patch to do a slight improvement in [1] where if there are no channels
> given in the devicetree, it does not really make sense to probe the device. Now,
> I want to express this in the bindings doc [2] but I'm failing to find a way to say that
> at least one of the patternProperties channel has to be present. For my shame,
> this is the only way I could express it:

No shame, there's actually not a better way. What you need is
something like this[1], but you'll see it has been an open issue for
some time.

I don't think it's worth adding given the verbosity.

Rob

[1] https://github.com/json-schema-org/json-schema-vocabularies/issues/16
