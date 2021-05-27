Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81EA13936CC
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 22:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235034AbhE0UJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 16:09:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:33098 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234229AbhE0UJ1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 16:09:27 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB832613DA
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 20:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622146074;
        bh=jSGMnqvbsYBYK9QQ5UiJGw5/8hksSoi/wfz6gBbr4K0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=jiDnd/GeOvEjpT7R++skoSC7RQ+LYg2LYZOL6GGW8oBRJhFqJVLeJGW2GORTmWPfe
         7Q1OgcDGl4S3UDtMdmXLfS7oFBcQobnYy6Ii+YN8OTtHkHa7bURe1lGanjfLVIzekd
         AMfh+Tmx2gKNJEh4dUgMRhAfAIp9ATCk6M+RS979ASc3/jDXMP7aCP7c/GFxkF9vTC
         GdMkmn9fPrSM0FQjxpEvgKynS+b1KfkR9AekKftFCfDIKYJL9Qt7Z2uFxoRzJAs9sl
         HSjdj9V5tjybIJDUXetMk+Ot1Qx08EiHwA9GE+SlveH0w/TeRg4idCqgpU+fC1p+4d
         xRb9kXLxNnA2Q==
Received: by mail-ej1-f42.google.com with SMTP id b9so1912382ejc.13
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 13:07:53 -0700 (PDT)
X-Gm-Message-State: AOAM531u8dPtzMxQWiFcJ0wEac1QzTHhxAlW/TKxhwpDja4VTuqxqLPb
        MXoxqaFjCLcIxKzxNdG1HPjaoVy/xJqH/PfKVA==
X-Google-Smtp-Source: ABdhPJx0wG5voWWnK+Xz67VNsygywDMc90CwtCQlzm370YUvUIFYVCx1y72a9LwaWswF6xaLeSurfkII+gC6/o/VA+c=
X-Received: by 2002:a17:906:a110:: with SMTP id t16mr1732685ejy.360.1622146072472;
 Thu, 27 May 2021 13:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-7-sudeep.holla@arm.com>
 <1622125407.781075.731789.nullmailer@robh.at.kernel.org> <20210527162503.4w7sch36ov6ew4mo@bogus>
In-Reply-To: <20210527162503.4w7sch36ov6ew4mo@bogus>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 27 May 2021 15:07:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJw7VoJaGZp_u56k1B3+tbpOimnmhY-4mL7axPyXDTs2A@mail.gmail.com>
Message-ID: <CAL_JsqJw7VoJaGZp_u56k1B3+tbpOimnmhY-4mL7axPyXDTs2A@mail.gmail.com>
Subject: Re: [PATCH 6/8] dt-bindings: mailbox : arm, mhu: Fix arm, scpi
 example used here
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 11:25 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 27, 2021 at 09:23:27AM -0500, Rob Herring wrote:
> > On Wed, 26 May 2021 19:28:05 +0100, Sudeep Holla wrote:
> > > Now that the arm,scpi binding is converted to YAML format, the following
> > > errors are seen when doing `make DT_CHECKER_FLAGS=-m dt_binding_check`
> > >
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi: failed to match any schema with compatible: ['arm,scpi']
> > Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi/power-domains-0: failed to match any schema with compatible: ['arm,scpi-power-domains']
> >
> > See https://patchwork.ozlabs.org/patch/1484218
> >
> > This check can fail if there are any dependencies. The base for a patch
> > series is generally the most recent rc1.
> >
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> >
> > pip3 install dtschema --upgrade
> >
> > Please check and re-submit.
> >
>
> Just curious if this is built as past of the series as I am unable to hit
> this issue. However I get this if I remove 5/8 which is adding the scpi
> yaml schema. Am I missing something ?

The automated check does try to apply series, but runs checks a patch
at time and it resets the base if it gets an error on a patch. I think
switching patch 5 and 6 order should fix things. Don't worry about
that yet, I'll look at the rest of the series.

Rob
