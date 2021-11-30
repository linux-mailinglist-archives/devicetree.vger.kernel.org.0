Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62753463EB2
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 20:35:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238492AbhK3TjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 14:39:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238517AbhK3TjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 14:39:05 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F6B6C061748
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 11:35:44 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id gb13-20020a17090b060d00b001a674e2c4a8so18229025pjb.4
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 11:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sWDyFUWdxQ2L44Dn9O1YprGmnD4i/gjKFy72LcInh24=;
        b=fmYdoJ+QfSpi5+zRZ4ATR/0W0w720kKBu4Xrp/ZsepzVY01HH5nbmE36LaxtPPBSip
         ysDFLwU929EgGOajUfGGDcOYhaq2k2HYXI7Z8KH173ntngRday6SvOTuqWWA+MNLcrCq
         Bgg4CLXvWsEaiu63OFjo/n8n+IrOoqRgHzSzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sWDyFUWdxQ2L44Dn9O1YprGmnD4i/gjKFy72LcInh24=;
        b=CEKn+pN2PHOzAWDypb+WINSX/FKLf/sonYr2kb5kjpXqulUm+3fpJwnHWKzBT/GGTY
         jWPcpOhcQMDXlfjaQNBm8D6CzkcvHoEKuPyegjfmb8vzjEUj3HXPLiEgNarbPK+VX9Ax
         +Mjb1CHDoBqS/Q0XIhrl0N0+QaeIwK5t7ZSmevLqi8QbtR/Rhx5emFSBgAzCElsXMEBo
         0KSb8pOk7Gv8S2BfjaSMqh32pMQIYrIlyJOvC3tU+sQXw4+Hrnqd69ZjIHNMhXyesuIf
         1G5UF36vTm84METx1k86sEDOBm4C+xSBw4Z1oD9HO+aUHSyJBDEj2I/T8dN77dl5t/OX
         yJMg==
X-Gm-Message-State: AOAM531NOUe8k9Pf3a+tup4Vv+uQoL+yPIBT0/NF/FAHAqvRC9IeIxTn
        TBq6u8YVW3ag41rpFKk3D5ZxJw==
X-Google-Smtp-Source: ABdhPJxlig6ZOOMb1RNyt32Dkd0PmMZkCbFfytvvQixTbiIqmc/Zam9IdbX+O+gw0FueolJYoaHZJQ==
X-Received: by 2002:a17:902:748c:b0:141:c45e:c612 with SMTP id h12-20020a170902748c00b00141c45ec612mr1197720pll.73.1638300943617;
        Tue, 30 Nov 2021 11:35:43 -0800 (PST)
Received: from localhost ([2620:15c:202:201:ecc:102f:1eec:93da])
        by smtp.gmail.com with UTF8SMTPSA id g1sm7763102pgm.23.2021.11.30.11.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Nov 2021 11:35:43 -0800 (PST)
Date:   Tue, 30 Nov 2021 11:35:42 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org,
        kgodara@codeaurora.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sc7280: Define EC and H1 nodes
 for IDP/CRD
Message-ID: <YaZ9Dt98JJ5UqW6K@google.com>
References: <1638185497-26477-1-git-send-email-quic_rjendra@quicinc.com>
 <1638185497-26477-4-git-send-email-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1638185497-26477-4-git-send-email-quic_rjendra@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 05:01:36PM +0530, Rajendra Nayak wrote:
> From: Kshitiz Godara <kgodara@codeaurora.org>
> 
> The IDP2 and CRD boards share the EC and H1 parts, so define
> all related device nodes into a common file and include them
> in the idp2 and crd dts files to avoid duplication.
> 
> Signed-off-by: Kshitiz Godara <kgodara@codeaurora.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
