Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10FE910822
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 15:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725993AbfEANIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 09:08:50 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:43853 "EHLO
        mail-lf1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726010AbfEANIt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 09:08:49 -0400
Received: by mail-lf1-f46.google.com with SMTP id i68so12917059lfi.10
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 06:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jwJnkA+EdwZYybzbFFWfTZuoqnVn4+gu+dMRXLR+jDY=;
        b=ZBkPWUv2nRY9BvVtnGu1syTL/Bf4bwiutwAAuCUCpviwp3cAnjhTeCxxgZFgB+Awc2
         E2kleF2rPOQ7YWEULWOOJyEGrL5CmYGC4vkPHK/Zejdqo6S3bhu6crdnoKE2PA27d35w
         zQzgEp2g3n7J3yyKmTWPZs6WLMdGYVPAYrTvxX5dCyUqvNpMT3ewgLBf9/Z2B7KT15/x
         vFMAs8hmq3V604ojUj+YbRGpUlVm55M8yMdOFA/iJYI6wZCsApDWtLOc+3y1JPED97ir
         rG/iffTR6+nbVHR4uc15ZfbFgvgzIHz3BGdfe5RBetMQoKpQe+dvnzxdmIfQwoLaukIt
         BMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jwJnkA+EdwZYybzbFFWfTZuoqnVn4+gu+dMRXLR+jDY=;
        b=FUXw/g3wzmIskY3CezwcGOMK3iP8c1EVx36GTA7OdhDJDtKnriaWdR7016EG7FJwBf
         OLtP/+a3rD3zbIlDofOmTBMQZ2EPqookti4fNp4bV3n4qJD3eAc9clKnGAb/EZZ+nY0n
         d45JAFofuXqD6lu47Yq9KlcAE5D0ykqnHt0eKS7KaBsm5euqV5/915s7FbhUIeQGxtVk
         R6ZZbpeK9KuVn0rGGPqsTzP8VSxKpFRv8SU7SE/9ylHqTtP7S0pi7cvRWhTSa+t0IJAg
         fkCCLPGB0cXJXI2ifdm3niYmx2srzVGUyDQEgxckfDbXGfkDWx2eeYmON9y1byiJzD8g
         FkBw==
X-Gm-Message-State: APjAAAWN8gRAtsowVEzicCtg1nLPIQ/3m5rA12XR2xk6sONVcKacC26J
        tu04nsa65bcQwWkoBQrJyIqG31kfJmT/3sanZwU=
X-Google-Smtp-Source: APXvYqy5d0qbLNeE1/RFxRNhCYoITtu7AR3Ata+JWb0JekiPCUAUGPYCCbfw9PxbMBWTxdZik3yjbFelFQ53iM3D+NU=
X-Received: by 2002:a19:f60f:: with SMTP id x15mr38757872lfe.95.1556716128031;
 Wed, 01 May 2019 06:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com> <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 1 May 2019 10:08:40 -0300
Message-ID: <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
Subject: Re: [PATCH V10 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To:     Frank Li <frank.li@nxp.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>
Cc:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Frank,

On Tue, Apr 30, 2019 at 6:40 PM Frank Li <frank.li@nxp.com> wrote:
>
> Add ddr performance monitor support for iMX8QXP

Please keep Andrey on Cc as he made lots of comments in v9.
