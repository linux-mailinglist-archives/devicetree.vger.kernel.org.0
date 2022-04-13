Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67C5D4FEC35
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 03:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231337AbiDMB0x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 21:26:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231370AbiDMB0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 21:26:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3F02AC6D
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 18:24:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7EC51616F8
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 01:24:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9843C385A5
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 01:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649813069;
        bh=gtmPcW/UmjRZ8FRWAjmiuE3ZCjEh09IH5+/1ZKjTUi8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ZQZsdQ95BQxOmB/C88OzUHfRNkQasGIKqs8QIWmtHwrGIR+sI+uHGAG0wvvUglrOa
         +2hcOQHNhpXvTfrcqH2/2VRRldQCeMPg94H/4H50Nw8/R//W903umQAHgZgH2FC8t9
         /B6fwQCG8GB28uGoVy+14tsvbFNxsh74K6cCeBno/eJvfTQWmEyFdgwlpJM+eUFB62
         S3P3W0KhpcrsgifN1YIa0osXgrIkYcLIPDXKHFy6tFm9Ta6/o7oSvS3z4GZxmwkfBC
         0kYe1yBk0w26x7f0ndKfKZfMebxf9qMRZVUFgwIH1yt751rjdLQmUQ0DNKq1KYfqNJ
         tOS/3+YnjVTLg==
Received: by mail-io1-f41.google.com with SMTP id e22so300962ioe.11
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 18:24:29 -0700 (PDT)
X-Gm-Message-State: AOAM532vFlu5JGeV/Vers/VuNHX4BjTquQwjn8z1qS33pmY9f4JdT9kp
        e7sFGVz1gKkteZWNu5n0vIqe5yTvRhq38TeWag==
X-Google-Smtp-Source: ABdhPJxl5tQvI7NMLj2gTkJawl8jHC1PCD/+D/QnUxyRP2aw9cqZdayHHVYEffSBE80f6JWEBOZYf27i/mXnTy0rE/w=
X-Received: by 2002:a02:1107:0:b0:321:78dc:890d with SMTP id
 7-20020a021107000000b0032178dc890dmr20439773jaf.236.1649813069048; Tue, 12
 Apr 2022 18:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <08fd5b71-9f9e-7635-747c-65ba7ee287d6@quicinc.com>
In-Reply-To: <08fd5b71-9f9e-7635-747c-65ba7ee287d6@quicinc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 12 Apr 2022 20:24:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLy+DfCqHKiVzs4TYx+PLmstAEjnujA=fR+NDrZKrFwSw@mail.gmail.com>
Message-ID: <CAL_JsqLy+DfCqHKiVzs4TYx+PLmstAEjnujA=fR+NDrZKrFwSw@mail.gmail.com>
Subject: Re: dt-schema checks with dtbo source files
To:     "T.Michael Turney" <quic_mturney@quicinc.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 12, 2022 at 4:41 PM T.Michael Turney
<quic_mturney@quicinc.com> wrote:
>
> Rob,
> Thanks for response on previous query, hopefully over summer, when we
> have intern on project we will be able to spare cycles to push warning
> as error flag for dtc.
>
> Along with rolling out dt-schema support on our non-kernel project, we
> are also prototyping how best to use overlay support, which leads to
> this post.
>
> Since a typical overlay source file doesn't follow standard DeviceTree
> format/syntax, dt-schema doesn't seem compatible with overlay files.  I
> hope I'm missing something.

Most of the syntax is the same, so it's compatible from that
perspective. And we already handle most of the meta-data that's
generated and added to the DTB. The examples in the schemas are in
fact built as overlays (primarily for the allowing of unresolved
phandles feature).

> This is simple overlay source file we are using and confirmed it works
> on target, in so far as libfdt calls execute without error and runtime
> code sees new and updated properties.
>
> /dts-v1/;
> /plugin/;
>
> &soc {
>         compatible = "abc,xyz-soc", "abc,xyz-soc-platform", "abc,xyz", "abc,soc";
>         new_property = <0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07>;
> };
>
> &sw {
>         boot {
>                 /*        client  trace verbose */
>                 config = <0x0001 0x0001 0x0001>;
>         };
> };
>
> Both &soc and &sw nodes are defined in base dtb.
>
> When we run basic dt-schema checks on above as a dts file we get the
> following errors:
>
> /: fragment@0: 'anyOf' conditional failed, one must be fixed:
>          'reg' is a required property
>          'ranges' is a required property
>
> /: fragment@1: 'anyOf' conditional failed, one must be fixed:
>          'reg' is a required property
>          'ranges' is a required property
>
> /: 'compatible' is a required property
>
> /: 'model' is a required property
>
> /: '#address-cells' is a required property
>
> /: '#size-cells' is a required property
>
> I'm assuming dt-schema is looking for a root node and the required
> properties in the root node and not finding it in the overlay file.

Indeed. The required property errors would be easy to handle. We do
that already for disabled nodes as they may be incomplete.


> Is there a basic incompatibility between dt-schema and overlay support,
> or is this cockpit error?

A lot depends on how you are using overlays. If you are using them to
add random properties on existing nodes (which isn't something that
can easily work at runtime), that's not going to work for validating
the overlay on its own (nor the base DT, if the base DT is not valid
on its own). If the overlays are adding complete nodes or subtrees
such as for an expansion card, then I would expect the overlay can
mostly be validated with perhaps some tweaks. The former case only
makes sense to validate the DT with overlays applied. If you look at
the overlay build support in the kernel, you'll see all the overlays
are applied at build time.

Rob
