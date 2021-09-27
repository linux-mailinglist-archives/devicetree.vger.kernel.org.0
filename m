Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BB7241A1A6
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 23:58:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237576AbhI0WAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 18:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237597AbhI0WAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 18:00:23 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A00BEC06176D
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 14:58:44 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id b82so26440931ybg.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 14:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wDJCI5T0Br2Ritsgi58JJe8S9aATby+38QJHat5FXcY=;
        b=EqH6GcvjeEMcWmAYQwZFBDsEHB3MSoI8Hu8hXnxkPx8nzj+Qb2OjWvWX2+d9z0vatc
         t3m8P2FtfHkO8WUL3ETzYzTrMcxv0GBQljoD+X928UldxpOEyj7DwtRcyMKAc4kniXsp
         dejpiK+VvJJYIizuj8/gyjHgsat+ZMJl3VVVll0R7jRFQNjFkYoyP2620s/Rj4yiAdxE
         MMt2IQVGbcVqCOVKpoXTTSsDOdG7qERLXvBKsXttkGs8QS22ZKzUun9p7xzIVVuqIekS
         G7rH/dw/v6iK/WfpkOTbDPaTxX0ZLGZrPdkeMFi58Q4T5VC/6ckVhPuU5rZyEB1hivMZ
         xHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wDJCI5T0Br2Ritsgi58JJe8S9aATby+38QJHat5FXcY=;
        b=ZHzTnLvaOow984RLTrrNiZGF8ZgNnenKkqE83KE8AUjrv3zLqDEXM5VogbUhSbXqvB
         VCsXlmTeFB2tne2gj2/De7LH4gS5klCJzkVF+WEWxJnv67yIugy8HzvXtskatJNa5TIg
         zwVdSWwTMvd4QJv1anuaPTW+jSXAiFH1X2Z1+73F7DUJxd1d8VPcSx13Ex6qIUExiVDv
         LQKbGOjq5CV0XrBSEogPlwDv4lda63B4Zrx+I+C+EchxO3WdHQHg/KXj2O4PYFNeS3Be
         egF+MBYIMq+RFd3MT2fxsrp5IdAvZWLXF4ZW5+u27ytZtTF+Kw1LHS+epJuYk5KFeZ3z
         Neew==
X-Gm-Message-State: AOAM532P5DXhz1SVPZ3Yl85E2hnahfSJV35FLXP2FuiykDc+NWCfEJ/S
        NT9/EDgU6uBUuklwawTGbHN075qpOhjsvqrAz3tMIA==
X-Google-Smtp-Source: ABdhPJxk+fxeCl6viq/uSfFrWvfTliEv6l1vW5kOP2PwdxfVJqx6vAugHrZ+SD+Eyijo6YR+WUg78bxjA1nMG9Hm5js=
X-Received: by 2002:a25:4684:: with SMTP id t126mr1352630yba.476.1632779923716;
 Mon, 27 Sep 2021 14:58:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210927204830.4018624-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20210927204830.4018624-1-dmitry.baryshkov@linaro.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 27 Sep 2021 14:58:07 -0700
Message-ID: <CAGETcx-3Y3rOSoXu3SbDa6BP_jcT8uSQA+MV55QCY4b0Oe7L-A@mail.gmail.com>
Subject: Re: [PATCH] Revert "of: property: fw_devlink: Add support for remote-endpoint"
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 27, 2021 at 1:48 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Since the commit f7514a663016 ("of: property: fw_devlink: Add support
> for remote-endpoint") Linux kernel started parsing and adding devlinks
> for the remote-endpoint properties. However this brings more harm than
> good.
>
> For all the remote-endpoints in the graph two links are created. Thus
> each and every remote-endpoint ends up in the cyclic graph (instead of
> the original intent of catching a cycle of graph + non-graph link):

Yes, I'm well aware of this. I even called this out in the commit
text. This creating of cycles and then catching and relaxing it is
intentional.
https://lore.kernel.org/all/20210330185056.1022008-1-saravanak@google.com/

>
> [    0.381057] OF: remote-endpoint linking /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b to /soc@0/mdss@ae00000/dsi@ae94000/ports/port@1/endpoint
> [    0.394421] OF: remote-endpoint linking /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b to /hdmi-out/port/endpoint
> [    0.407007] OF: remote-endpoint linking /soc@0/phy@88e9000 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/connector/ports/port@0/endpoint@0
> [    0.419648] OF: remote-endpoint linking /soc@0/usb@a6f8800/usb@a600000 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@2/endpoint@0
> [    0.432578] OF: remote-endpoint linking /soc@0/cci@ac4f000/i2c-bus@1/cam1@c0 to /soc@0/camss@ac6a000/ports/port@1/endpoint
> [    0.444450] OF: remote-endpoint linking /soc@0/camss@ac6a000 to /soc@0/cci@ac4f000/i2c-bus@1/cam1@c0/port/endpoint
> [    0.455292] OF: remote-endpoint linking /soc@0/mdss@ae00000/mdp@ae01000 to /soc@0/mdss@ae00000/dsi@ae94000/ports/port@0/endpoint
> [    0.467210] OF: remote-endpoint linking /soc@0/mdss@ae00000/mdp@ae01000 to /soc@0/mdss@ae00000/dsi@ae96000/ports/port@0/endpoint
> [    0.479239] OF: remote-endpoint linking /soc@0/mdss@ae00000/dsi@ae94000 to /soc@0/mdss@ae00000/mdp@ae01000/ports/port@0/endpoint
> [    0.491147] OF: remote-endpoint linking /soc@0/mdss@ae00000/dsi@ae94000 to /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b/ports/port@0/endpoint
> [    0.504979] OF: remote-endpoint linking /soc@0/spmi@c440000/pmic@2/typec@1500 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@0/endpoint
> [    0.517958] OF: remote-endpoint linking /soc@0/spmi@c440000/pmic@2/pdphy@1700 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@1/endpoint
> [    0.565326] OF: remote-endpoint linking /hdmi-out to /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b/ports/port@2/endpoint
>
> Under some conditions the device can become it's own supplier,
> preventing this device to be probed at all:

I'm not sure this analysis is correct -- this shouldn't be happening.
If you go to the device link folder and cat "sync_state_only", I
expect it to be "1" in this case. Can you confirm that?

Which means it won't block probing. Yes, the link itself is useless
and it'll get auto deleted once mdss probes and it's easy to not
create it in the first place. But this is definitely not your issue.

> $ ls -l /sys/bus/platform/devices/ae00000.mdss/
> lrwxrwxrwx    1 root     root             0 Aug  4 15:13 consumer:platform:ae00000.mdss -> ../../../virtual/devlink/platform:ae00000.mdss--platform:ae00000.mdss
>
> I think that until of_link can be tought to handle bi-directional links
> on its own, we should not parse remote-endpoint properties. Thus the
> aforementioned commit should be reverted.

Nak. remote-endpoint parsing is working as intended. I don't think the
analysis is correct.

Can you please enable the logs in all these functions and attach the
log so we can see why it's not probing mdss?
device_link_add
device_links_check_suppliers
func fw_devlink_relax_link
fw_devlink_create_devlink

-Saravana
