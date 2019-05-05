Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8C9C13C9B
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2019 03:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727127AbfEEB2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 May 2019 21:28:24 -0400
Received: from mail-yw1-f66.google.com ([209.85.161.66]:33700 "EHLO
        mail-yw1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726768AbfEEB2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 May 2019 21:28:24 -0400
Received: by mail-yw1-f66.google.com with SMTP id q11so7586279ywb.0
        for <devicetree@vger.kernel.org>; Sat, 04 May 2019 18:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2otJGsHwkb3bMNHmlrt86miIvaLDTlDpTJs8h69fY9k=;
        b=JxhfTMnbWRoOHCOUk/H+0boBBwK1HWTT0HZFsJweoqU4b4GBnnp+GQ5OVf4JNfg1Yt
         v2h9iSU74OGnfmIDHmo1nM80H7+pQvBvj/xuXBkEIHGYVXybXSH9e9rAQqbuY6CK76vF
         686yvgWB+Sc6PuXSlHT5Dcr00FPjG/OV2WtX6DKpu1jNyvAsgKMP60rLr0xTS9q71w0Z
         DJoeWiOlLDlCc87tNnaK8h+ErZr4gfVXMKfwHQ4EB47DoDBI+E/HAXihxEzeaqB9NNCM
         /Yv67vyrQ6dItsMU3l4IvoNs7WKll32XcSgecrV18xOKyvrbcB74zw4KcIK9hK2z2VAB
         hw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2otJGsHwkb3bMNHmlrt86miIvaLDTlDpTJs8h69fY9k=;
        b=S/XedMYauPzpU2gNCy+/KNchvWTnjbgRYeD592+kTxQ/Oau7qc4glMarvaJm34Tv7O
         5GbAvUmOJ52uqawPL7gGAcFdk/xqDqMysNnWhzE9y5Qclu31Ukl7ETyDSy5oNXSLm8Vj
         rtxzAV25DPsH8IDV82Y7Cq3JpWEDYq5kYmGsdMrvlBvy6rcZxxNA586lqpFAIxy2QsUq
         iIe+FXVmy9W2mGWxcrvv6ljuj1h/7qiNVKVmSPKsonI+bZZKbj7XutWxbkMP8NsLId/L
         zAKPTy1rsYKNV5okimlhElxdTRq9k0QlmM0mzQGooM4gGlCk7svHszmo6vpLt/GVnhMA
         dKiw==
X-Gm-Message-State: APjAAAV5iw6lOBcssbiTp1fPm+ToZhhKvXPtfHQOtbZ2wVqf8iNr7Cof
        kOL98k6i0c5JOdJbqS1CdtAd4w==
X-Google-Smtp-Source: APXvYqz7Z9HZlRm0+fIdfo/3YxyspUpGDcHqYzE/lSefk4LuGcWQDBJSRzQ6K2CZ5K1h8oOvfmrEow==
X-Received: by 2002:a25:6104:: with SMTP id v4mr3581702ybb.450.1557019703548;
        Sat, 04 May 2019 18:28:23 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com. [45.56.113.65])
        by smtp.gmail.com with ESMTPSA id a11sm4034363ywh.49.2019.05.04.18.28.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 04 May 2019 18:28:22 -0700 (PDT)
Date:   Sun, 5 May 2019 09:28:15 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Suzuki K Poulose <suzuki.poulose@arm.com>
Cc:     mathieu.poirier@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com, alexander.shishkin@linux.intel.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, shiwanglai@hisilicon.com
Subject: Re: [PATCH v5 4/4] coresight: funnel: Support static funnel
Message-ID: <20190505012815.GA6229@leoy-ThinkPad-X240s>
References: <20190412102738.12679-1-leo.yan@linaro.org>
 <20190412102738.12679-5-leo.yan@linaro.org>
 <16ae9127-b282-e6b8-3a6c-5165c8618bb4@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16ae9127-b282-e6b8-3a6c-5165c8618bb4@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Suzuki,

On Fri, May 03, 2019 at 04:11:50PM +0100, Suzuki K Poulose wrote:

[...]

> Given that we now warn about OBSOLETE bindings, please could you fix
> the existing DTS in the kernel source tree to use the new binding ?
> Similarly for the replicator.

Yeah, will do.  Thanks for reminding.

Thanks,
Leo Yan
