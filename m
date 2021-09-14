Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1106640A239
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 02:55:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235347AbhINA4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 20:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhINA4d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 20:56:33 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A967AC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 17:55:16 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id y16so24362406ybm.3
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 17:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YQniph6FdkKmSr1c2malA0eTapnl1s9lw1GoE+uqNAg=;
        b=O4N4XwLXbdAe0wKg9/cJnkIXvyoJiqVruUNw19BWjpFuyvF3Ig8VgWCFzsk9Urvtbv
         tDsiayPeqJID9KaP0LQe5D/FRkIi0VPSN26p7lFd3SqnMzVa2sM2kPS7lmHOLvLNTfeG
         hyd/UvTBk+CKtYAwpiplWyOdo4881sVsQubksFbxfrKN/YaNOJFOD2ZmFgGhAmLva2e3
         hwgExJ37RHgmzkhUUL0/MvZZXHm//zb16onNSPKICH+ETrgsHJiiu39fLisgrLoi4TJO
         bVCzzF2eLQky0n66Ifio3eBlYTd8IrNq6sSnwZ+PoPAiyI81xuzMMggc0PsCmC9S+m+F
         V0VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YQniph6FdkKmSr1c2malA0eTapnl1s9lw1GoE+uqNAg=;
        b=mZ4GCfazml+IEXFeFRDgLPtdZ8/RWV+Ft5HZXX0q2MftRY96MQTZBQ71uYWZOC4R27
         ChGEMtmmaP4NXTM/fnd4tjhzzTUpaSaFrlOxT8oh4BdVlROrhI3q+s40I6aXsj16Wb4W
         1hU+G71YrHDhJsN/3Nu19HhpqP3Ojeq5YNTlHU1RI4/fm2eA11bydOLBQsYImiyLlzU4
         oZTcR5CyP0mIL4a9lGpbtR/9+FnfTJpIB3L2XVxUxrn2GxG5QWhfq6ka2R/hLveGkNSG
         VPprSzBagob91O2Elbx3o86mH7i+jshoVRLXXEtC1HpsbuUofTEoSl5OeJ11x9vaxnLG
         srmg==
X-Gm-Message-State: AOAM530m+UVLpwQ2JvF/LXUDIZyN4CwNsn+R1af0bCe6WSPc1Fvwe2wB
        ddgDKKBf7XlgKwh5ipFxNQCeMSGcwbYdx0QKf7l2OjVk8og=
X-Google-Smtp-Source: ABdhPJzSOp1LDR8yTT6QqmrZYOtxDUKNDwIkQknXYLMtdWqTb7yc1gG9gfs4s8rlU0qruNuhaPdlPRl89YJ8SKEpn4c=
X-Received: by 2002:a25:21c5:: with SMTP id h188mr17677017ybh.23.1631580915727;
 Mon, 13 Sep 2021 17:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20210908215815eucas1p12d139145cbb80041ca0dce750eed04fb@eucas1p1.samsung.com>
 <20210908215806.2748361-1-saravanak@google.com> <75889ceb-343b-161f-0280-13df347e6628@samsung.com>
In-Reply-To: <75889ceb-343b-161f-0280-13df347e6628@samsung.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 13 Sep 2021 17:54:39 -0700
Message-ID: <CAGETcx8peaew90SWiux=TyvuGgvTQOmO4BFALz7aj0Za5QdNFQ@mail.gmail.com>
Subject: Re: [PATCH v1] RFC: of: property: fix phy-hanlde issue
To:     Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 9, 2021 at 1:03 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi
>
> On 08.09.2021 23:58, Saravana Kannan wrote:
> > This is a test patch. I'll split it up into multiple commits and clean
> > it up once it's shown to help.
> >
> > Marek, can you please test this and let me know if it helps?
> I've just checked and nope, it doesn't help for my case. Ethernet is
> still not probed on Amlogic G12A/B SoC based boards. :(

Hi Marek,

Thanks for testing out the patch. Turns out the issue was a lot more
complicated than I thought. Thanks to a bunch of debug logs that Rob
provided off-list, I was able to root cause the actual issue.

Looks like the problem is cyclic dependency between the mdio-multiplexer and the
ethernet:
ethmac -(phy-handle)-> external_phy -(parent) ->
mdio-multiplexer -(mdio-bus-parent)-> mdio0 -(parent)-> ethmac

Relevant parts of the DT combined from multiple files and trimmed and
pasted below.

If fw_devlink sees a cycle, it'll stop enforcing ordering between all
the devices in the cycle since it can't figure out which one of the
dependencies isn't real. So, the confusing part was that, when Andrew
Lunn gave the patch for adding support for "mdio-bus-parent", that
should have allowed fw_devlink to see the cycle and stop enforcing the
dependencies. But that didn't happen because of a bug in fw_devlink
cycle handling (it worked for most cases, but not for this specific
ordering in DT). I'll send out a fix for that soon. That combined with
Andrew's "mdio-bus-parent" patch should fix things for you. But I
think I'll revert the phy-handle patch for other reasons (I'll explain
that in the patch that reverts it).


Thanks,
Saravana

ethmac: ethernet@ff3f0000 {
    compatible = "amlogic,meson-g12a-dwmac"

    phy-handle = <&external_phy>;
    mdio0: mdio {
        compatible = "snps,dwmac-mdio";
    }
};

mdio-multiplexer {
    mdio-bus-parent = <&mdio0>;

    ext_mdio: mdio@0 {
        /* no compatible prop */
        external_phy: ethernet-phy@0 {
            /* no compatible prop */
        }
    }
}

-Saravana
