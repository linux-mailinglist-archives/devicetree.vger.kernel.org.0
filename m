Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1484E1D593A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 20:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgEOSlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 14:41:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726238AbgEOSll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 14:41:41 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A1FC061A0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:41:40 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id d16so3035232edq.7
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kv5MUGjy/Y9+njlPVWiZ3iEONaGvUB+Gebu1dnu2KGM=;
        b=ujlKf2bmyqPK5q4p74/GDbGVJ43T0RZnhudgi7n1l3KeJmLjhq9FRvW+ly3rplSZw/
         SShXcTT1vXathOvlWEpN853Noevit9g2dNWB6aHQOaCM3GbURUAjjNABKHtugKyC7pzp
         yrc2jGfe+UP0BX7owd0hprTmIB8+dPFvsRZ2z59fYVlOI6dWY9wJqBFNwvMQF6tytc/C
         J2q8UqC4917gXeX4gvlTV2nZTl2lvRMJp+aqGcW3bG2A4nsFRe0sOmwpoRE6lWWkJQMK
         zSkTCp3aEtIg/2Vg5023BRydDCthya0H6yD4SwWhzdykq2Vf25NK+U24fYDd5keEbumH
         lLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kv5MUGjy/Y9+njlPVWiZ3iEONaGvUB+Gebu1dnu2KGM=;
        b=LyzuTShLTddiaSYLEXZKfpa/GpWW2oTCPlUTjFuWC+VFQuyRZkXEhygreU3jw6Jajq
         1Ou6J28fIc2LZ+7A6tYKcf1H5geABhsXlCICeuAt7jNujwVUZcfpdAmHUvxT+a5vAj8y
         ehe0eMzvvJLhaYc9eHCpC+dUOjdNFmTwMRKS8KY8aG00ETbo2+aSbshItK4thz30sbcg
         iI78b0gDALxun30jrYr0jZ0sWNDcEjxkFlWzafnoAC/VYYhvb6agJPmx6ZJkgLA/463e
         OHhnIftmAsiUbYq8EtIRw/5YZ31N+NRbomr0THSeBxZgq//dslOLwyCwvI34iOYkWVXs
         PW2w==
X-Gm-Message-State: AOAM531nMvVQB8acczDEgbPNsO5tNXlJk1ljvKRwG/8TpcpTRTgLNTyn
        liDRR1SZ9YJ3jktVqASKlVDB+PBmyChMatnQBY8=
X-Google-Smtp-Source: ABdhPJw75eCBt+AI/OMsnjMjqhZaamKLCUTFwu5SGXAJdiwEJWMf0HfnrJS4BYtF3MwaV7yuh1t3Lq3sWs5D+CNlTNk=
X-Received: by 2002:a05:6402:2208:: with SMTP id cq8mr4347508edb.293.1589568098804;
 Fri, 15 May 2020 11:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com> <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
In-Reply-To: <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
From:   Amit Tomer <amittomer25@gmail.com>
Date:   Sat, 16 May 2020 00:11:02 +0530
Message-ID: <CABHD4K9+2DKWiLATEvHLNgUj-otD1iNAkkYV1feXX3e-0HPvFQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, cristian.ciocaltea@gmail.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> I was wondering if we should add a SoC specific compatible here, to be
> on the safe side. The BSP driver seems to differentiate between S900 and
> S700, although it looks like only to cover some misplaced platform setup.
>
> But if we later find a problem, the DTs stay the same, and the driver
> can easily be fixed.
>
> So, using "actions,s700-mmc", "actions,owl-mmc" here, adding this combo
> to the binding, but leaving the driver alone for now.

I think, it can be a good idea to have this extra compatible string that may
be needed when MMC driver evolves to support more features which requires
data to be differentiated based on SoC.

Thanks
Amit
