Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C07D45F7BA
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 01:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344607AbhK0BCH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 20:02:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344035AbhK0BAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 20:00:06 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6F1C06175C
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 16:56:05 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id n66so21800747oia.9
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 16:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TsYDLIp3SURoGlogh4l/OZ4ji0kGf43UvWJ/HDPp9uM=;
        b=HqSKDi0cjlyrRMTJ1OJ2TaCzVUW0zw8IAjmBi8LvnDSXqq36qpbW0xVhoHS2O1wcOY
         V9OoKyIB/Vz2FeHHOz2jZDndEbXOlNTBQbLxvDmonhxrk+k8K4gPxXkylROA+XbhP0pz
         qAc801vn5n1HQyr1+eCwtFjXMfTHyfuIhDVguRFh979KQz8f98aDgWobZ+PHp89dOmyO
         aiTPe3zFeOdI4ZlT0L74aoyLxfQ/UmeC6MWVbigLuO2H2KqUhcj66mk0vhBijZyqN5E2
         +pWmjg2YqMLgDCiNU59b7dcj5xs8MybitoEScniznitePjt1uqYwuxeoaZVn+Y4Q6D66
         Hacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TsYDLIp3SURoGlogh4l/OZ4ji0kGf43UvWJ/HDPp9uM=;
        b=x/5Cnc6v/0vmVXIfWfZsp756AmUES2FtX4W3043YlCgzigGV/M3LuFJ/1X0yXhGes/
         2g/avL16UoYvx/O9I/FAffPBIJdJNrScXpTos9dMVGi6TDCNXtY+uebehC40M/A0TtLb
         ppdrj67BYYDwmqJGScQV0S7TpFvnv3TPgUyDhWXGSaRRNkFRF6hbxGIuqnCIkv8IiJ/r
         ka8aS+UeWjIVsEEuZ5UMhBOLE1GXNsFX7hHDGkPXuRDNsVmV+t27aXMdCqnyMmpLboIo
         0cHIQfM9Mm2QDDxdMzTI2BT5gJ2teNn+S+sxCQx4sEgBvWkDNobxM97Rb301FwxfN/zN
         jp9A==
X-Gm-Message-State: AOAM533qINF+JFWT1233JG1F4TMbE58G+4/DuS3Lqlkw4kfo96/2zCkQ
        QOBtmqVfKV2Ato+nHlLa7lCcRjH/LFB4eDNOiL4V/w==
X-Google-Smtp-Source: ABdhPJyxv5KKxtYotJxpNvBo5p5sOOCrMcG3RfEH/cdZCtrFgzZb3V1sigF6lw0v79E8hVyzV7kIMFXHY9001AXgILE=
X-Received: by 2002:a54:4791:: with SMTP id o17mr27567633oic.114.1637974564863;
 Fri, 26 Nov 2021 16:56:04 -0800 (PST)
MIME-Version: 1.0
References: <cover.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
 <6123f62ac44e6513a498d15034a4b6b22abe5f5b.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
 <CACRpkdbKeW+pJ8SZ0fPD+9kEtgHgi2A9U=f6XyKTHogKU-9F9g@mail.gmail.com>
 <7b34e88f-54f3-6d0a-293e-b2b411d1c5c2@fi.rohmeurope.com> <676253b9-ff69-7891-1f26-a8b5bb5a421b@fi.rohmeurope.com>
 <28df4678-345b-78e0-06f0-1fdcbaff455d@gmail.com>
In-Reply-To: <28df4678-345b-78e0-06f0-1fdcbaff455d@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 27 Nov 2021 01:55:53 +0100
Message-ID: <CACRpkdZEmYWp+KtmYv9HXEH9ikNPB8sE5AuDVs=ipdLOWv9e0Q@mail.gmail.com>
Subject: Re: [RFC PATCH v3 3/9] power: supply: Support DT originated
 temperature-capacity tables
To:     Matti Vaittinen <mazziesaccount@gmail.com>
Cc:     "Vaittinen, Matti" <matti.vaittinen@fi.rohmeurope.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        "rostokus@gmail.com" <rostokus@gmail.com>,
        "fan.chen@mediatek.com" <fan.chen@mediatek.com>,
        "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-power <linux-power@fi.rohmeurope.com>,
        "Mutanen, Mikko" <mikko.mutanen@fi.rohmeurope.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 26, 2021 at 1:35 PM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> Hope this did clarify. Afraid it didn't :)

I got it first time, I think. Or I just think I got it but didn't ;)

Yours,
Linus Walleij
