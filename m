Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425282F888E
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727455AbhAOWjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:39:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726661AbhAOWjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:39:53 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB93DC0613D3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:39:12 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id y205so573035pfc.5
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=Y+c9HS3HJQoqEUWQRXGWZKY5dKQmAKWSEZz8d5vX0FU=;
        b=P0fiHh/oe3hWdW5Wx4pzUmfwyiQzjlFLEMallmyifhCooJCVq7w5B5NWF+ZAinmnba
         xh805OL650c5mw8CBh7JLgvt8QcKl2prrZPuk+UgelMY0PH73TcezAl/aDjqDIW31Pp4
         eIvv1fTiod+GgbZBkM4U3BwFzYsl/HO0sUbFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=Y+c9HS3HJQoqEUWQRXGWZKY5dKQmAKWSEZz8d5vX0FU=;
        b=ItjQDfBhQZCZZubJICrx5GpoJTT+BEmdkrHJSMmoMe+dFJKJZWq42sDL+VFshEA27x
         1ZHGvLZh2mABVu2T4QZ9EKG5Pr6cBSZMYmC5jqtilvodF/zDvglEIVi0vHKHVKxbCZbh
         xuNFc8cLJPmUJtE7vxErG63uVXn4Au/9fvJbROsxCBEzQsyJVYa/4eGpvIMuVHV63LRz
         4JNZutVKGZdIWcUKmhMUZb4r7POb0B5PkpQLoIltpwi4tBIGcEWWFPdSgH8uccOqJPWd
         ZACOW9lXcbRzHVLwBd8s9IrPfs9oZ6c9huEj5N+I7YhKoS+cpGLu4ksEJlRsGSBHZzZZ
         j0Kw==
X-Gm-Message-State: AOAM530trJo+3KrU3fJfn2r23UrhCdVWszLDE6l1aa94JX1dzSsrX9SE
        DY5aXgJTcxMfYpWBLc3R3UhCzw==
X-Google-Smtp-Source: ABdhPJwetKTrsYDO/MS3uQ/4bM25Gvzem9TMvE7hVpCR9+DEgOQIq0GoGhBZnQW4prM8us8FZ9T/gA==
X-Received: by 2002:a62:15d2:0:b029:1a1:c2f2:e851 with SMTP id 201-20020a6215d20000b02901a1c2f2e851mr14981471pfv.7.1610750352548;
        Fri, 15 Jan 2021 14:39:12 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id gv22sm736919pjb.56.2021.01.15.14.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:39:12 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210115143555.v6.3.I96134907488f41f358d03f3c1b08194f9547e670@changeid>
References: <20210115143555.v6.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid> <20210115143555.v6.3.I96134907488f41f358d03f3c1b08194f9547e670@changeid>
Subject: Re: [PATCH v6 3/3] dt-bindings: input: Fix the keymap for LOCK key
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Fri, 15 Jan 2021 14:39:10 -0800
Message-ID: <161075035048.3661239.6086252465678815045@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-15 14:36:17)
> Decouple LOCK from F13 and directly map the LOCK key (KSI3/KSO9) to
> KEY_SLEEP action key code.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
