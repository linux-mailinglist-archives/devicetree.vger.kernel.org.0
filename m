Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC3D22CA315
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 13:51:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728570AbgLAMqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 07:46:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727852AbgLAMqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 07:46:49 -0500
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE3F4C0613CF
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 04:46:03 -0800 (PST)
Received: by mail-qt1-x833.google.com with SMTP id v11so921723qtq.12
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 04:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7iNX4az0YeQfomexDkoph7IZwiZmUXVX26ZXAR+tods=;
        b=vggdqk5aaktOHGIiecOKj9mHsAdpVWlmG07NrAco+OMmBHIN4PwaT7GVVVRxEvOmh5
         hl8G9ASvZIP3Z6g9IkSAN88An7XUCbKg/+zR8m20Ymtme9XxzqlaJfPzRNWLWl5DUZzG
         D9U15chzY3KzoEBs0LnsZEuCujEndhDySVSOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7iNX4az0YeQfomexDkoph7IZwiZmUXVX26ZXAR+tods=;
        b=URwZAw7yqZnZr1Mgwms147Ot9rRrH2Vd29WQpMYLLTr/3P2x2UCfFOasRNqoNZCMnW
         +KlH+zwtnCvi7CLb0KkQaDaPSnYTh7k4C4SSK/zDFP43Y9TPU/7jcSoL3jxtWd7trOh2
         Kv8J8N+cxmN1Qty4xyxyTCKz27o5aTjGazPBNc1Vtn1jpUYJ6zd9gS9SmwMqfFMJZ29g
         RvO6HTSqNCdHUpNXjCQ8KtE0Fezns++EbJxZ5Quov9Qa5XVHYXerDWHvq16S1/qHRJh7
         HjmvgFSO/IoTZidhmX/02baR9K3AtiY1ojbOZUp+EOvTvJhXb+2CsP3n7rb9INTgcCa/
         k2uA==
X-Gm-Message-State: AOAM532HMLWUSXllMw61VT5Ln+NkaCRKKhDLfONR8xqm9B/NWEkBWwHZ
        C4X+NJb1dohJGWubSUf23qUfMQVnlnqm3dAgNyO15A==
X-Google-Smtp-Source: ABdhPJzu/DymQqqoFzpM9sg+fMa+dytMTJSApuPKs0qPezXDvj20YtDP/Q12Zwv4DT9Vt3h0OAR5EpVlA2b5FnR8EVc=
X-Received: by 2002:ac8:5450:: with SMTP id d16mr2545505qtq.33.1606826763118;
 Tue, 01 Dec 2020 04:46:03 -0800 (PST)
MIME-Version: 1.0
References: <CAFr9PXkX3UnLzGsPntXSum1978BkDJ1sn5XCp9Ze9KnHdmBDrw@mail.gmail.com>
 <CAL_JsqLcg4z7CnKf=7CsL1x3sPS+e2OxshGoD5j8kN4hQCFqrQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLcg4z7CnKf=7CsL1x3sPS+e2OxshGoD5j8kN4hQCFqrQ@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 1 Dec 2020 21:45:52 +0900
Message-ID: <CAFr9PX=A745aJ=Nz0wd014=xK5ujKDUTU69F5z5OHei+e+1doA@mail.gmail.com>
Subject: Re: How to describe a device that sits across two busses.
To:     Rob Herring <robh@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, 1 Dec 2020 at 04:11, Rob Herring <robh@kernel.org> wrote:

> > Is there a good way to describe this? I think maybe the memory mapped
> > area should be another node (syscon?) and that should be referenced in
> > the driver node and the driver node itself nested in the riu simple
> > bus where the registers are.
>
> There's not really a better way. I would stick with 'reg' and not a
> syscon. Unless you restrict the address space with 'ranges' nothing
> prevents having the above. The main thing we want to avoid is having
> the same address used (in 'reg') by multiple nodes.

Ok, I'll go for a node with 'reg' that the driver node references. The
simple bus
the registers are in does now have a range that doesn't include where the
memory mapped region is.

Thank you for the input.

Daniel
