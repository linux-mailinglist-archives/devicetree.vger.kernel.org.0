Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA7422B28F9
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 00:11:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726268AbgKMXLf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 18:11:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726199AbgKMXLf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 18:11:35 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B9FC0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:11:34 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id f18so8300662pgi.8
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RLqqkP41K5S0my+4v7z92E1irpvXESQaFOkhzOdrUuM=;
        b=J2Wi1/9KLmpO7nkujRY7oytVw+ASfWYpOvWv1CmLuBzDO0+v+mKXPJ0JavLRL1c8Uw
         olXukE9WbrRHDyF+SkeVjQf3spfOHqq9HFdCgTd5LNUwbXx3Jqbaap2ok2KIzFo+vzIc
         6aNbx6l3W2pXurQvQYBDi0j9zzwL9bFWxTcH3aTOgeB35Fk1Th83F/gvR07b6CSY4jNL
         V0kkrw9CpkeG16CJSL5lNyW+zznBLfMzVeQsdwSJozbz77P9uUMt28IUE7HMiIcSAeQa
         iDn2F3EllqKeHN1ictK6s4L8SNcojTGKuL3DXuz/Xj5lQJ0sZh7wzLyAYHug3Ki2tbqx
         7MUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RLqqkP41K5S0my+4v7z92E1irpvXESQaFOkhzOdrUuM=;
        b=n07T6mEurbZOYGcVl9H51RQs2l09H3XDnznunvNMjqyYMUFyaia5qbDGYBQQNAeLW6
         XEzSSwC7CRxrjXrvw90sBzaj2+oObZbPbnVXvlUVkojFb9V11dtSfUrf73+Iix+Wa6Cq
         zoLD6RKTeOjjQSXFVAjB2Hu7faRM7t8Xas6EWBVb4Y+MfiEMg0bHa5TQDC1wLrUixmiq
         o555xSdZSDt7HA29oEFj4NtMfySQDmOUv8DQmDMcKFFA1RiVpDIRXtb9iGWpdRunIyeJ
         z1v8aWRKcoQcyADPW41YAnGjng5JIat+jHiOdFhDdNMMt9mI/5ttKEadisCh/Ghb/UMy
         Ry8w==
X-Gm-Message-State: AOAM5317sHudvJbVVQy3ZftBVpFKf7vwBJbrIFUVMyA20672Hhed6n01
        4Z6co7t/dYWh4FHmTbDEG7E=
X-Google-Smtp-Source: ABdhPJxxjDLlQFYLb5H2WJT0Ax0Whc8rGoHXDjoGJZMQ4xbkhMfZfFjKDyyV6bAJX//v57ZMlbG8hA==
X-Received: by 2002:a63:4a57:: with SMTP id j23mr3539093pgl.296.1605309094311;
        Fri, 13 Nov 2020 15:11:34 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s2sm12617193pje.9.2020.11.13.15.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 15:11:33 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Disable USB 3 PHY on devices without USB 3
Date:   Fri, 13 Nov 2020 15:11:32 -0800
Message-Id: <20201113231132.1632444-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113100919.25609-1-zajec5@gmail.com>
References: <20201113100919.25609-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Nov 2020 11:09:19 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It seems pointless to have it enabled.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
