Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF09BF4D9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 16:15:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726984AbfIZOPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 10:15:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:36542 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726975AbfIZOPP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Sep 2019 10:15:15 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C9546222C7
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 14:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1569507314;
        bh=syFB0s8Z9+UBGBqrI+vXSPb73kAHmkg+VCZHK6EDWk4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DpE+lMxmAkejkULP2WYcECnvDCLbMsCbcl0ESFTtWGdhXQ1xABq8KZlq3mBG764Gz
         sJOBkq7MdBBTnBsXE+mQovDaX+cKNpIIIAZA772lwu65G4i31k+s3Q/gJh4VM2iGWp
         6ahrtGVgks6X60SQjQzCrYOcnMzn9/RHrlt/KDwI=
Received: by mail-qt1-f181.google.com with SMTP id u40so2990825qth.11
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 07:15:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUbUWPjaXWSXCU5AkLRUKv5ONR9PqCHcXAL1B1nUMsP8KwoVBs1
        xlA1qqcHu0LoFJfneAIlszyGMqGOOO9A0A3CAw==
X-Google-Smtp-Source: APXvYqwIMIe5OEpAgQT8ClcMlHD627oH2q+knkeerrGnhKgwkBYias9cnbzPSO8cBDCsspBtxFeoksLM+M7YJRGk9HM=
X-Received: by 2002:a0c:fa49:: with SMTP id k9mr2880504qvo.72.1569507313951;
 Thu, 26 Sep 2019 07:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com> <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 26 Sep 2019 09:15:01 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
Message-ID: <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP
 subsystem bindings
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> From: Hyun Kwon <hyun.kwon@xilinx.com>
>
> The bindings describe the ZynqMP DP subsystem. They don't support the
> interface with the programmable logic (FPGA) or audio yet.
>
> Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v8:
>
> - Convert to yaml
> - Rename aclk to dp_apb_clk

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected
