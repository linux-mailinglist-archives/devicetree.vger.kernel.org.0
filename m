Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4BF21C436E
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 19:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730571AbgEDR4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 13:56:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729386AbgEDR4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 13:56:42 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82083C061A0E
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 10:56:41 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id re23so14706146ejb.4
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 10:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RjIlcnq4yiC6vV5MYzey8j0IMoFyjTKlaFO0D+bQg24=;
        b=ZGEyPwV03UkmAUrht9/IhvuD1CmRcikPe5XRtd0QZjb6wKtnzvCsvnSu+MS+y0s0Hk
         z1HUVem0q596xf/xLXiL+6/UR8QQTZBqjWw2gONtaZd2BXEBQqeqovU6O7bheFuu4GCi
         KxIpqERDZluuFq4GZjuuaEykRni7NJfk88Vc7yMqUe8CrGvk7Gu7xHcVdteGOmCv4dWL
         eMWILgwESOkvC8pLu2xalTHSzD21cw51yXWPNmaHBeGUvL+2MPeJhiEFr5uNGN1nII4a
         1JKwBTVD1jV+acMUwVAMfjXEPViCk7JRXleFI2rrsmnOY65xKNg4+K1bIWNxoPYfW44f
         dOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RjIlcnq4yiC6vV5MYzey8j0IMoFyjTKlaFO0D+bQg24=;
        b=ZJ0/q+k82cdxIRqppryD+dQRN5PMQ4IKeah6QaMYYibHlcp0neDzerg6o6dAoa0SD7
         3wka6JNc5jsMCccuHlwsoXgTiXfwHKWMrkZkUv/LSbR5wadd8SXsnX5/M3XhTCIjb5ju
         TKBVCIgZJcC2sun7cqYVme35OVXfzAJexOXyfkRBKC1HDMvOMsN2XVKlVJl49MCOuo7f
         VOiEeaABSrPvLGb5hu51JeIPGuo13lVGrPJ97KZeaBCl/O5lxVUwiPz9Ci6q471N+UVg
         jCuX9NcLru5nuRJ5GQBQhys/ec2A3Gi1f83O5GytR9317uklxG8wMCwnyIyYRtbNNmce
         2QeQ==
X-Gm-Message-State: AGi0PuYzQWpp4kNey/770gl+i4meopucJ5oXohmrD40fd9IoRG+Ip5YM
        9JGBJnegKL+S3pjstaUrFcnZcjfy37AXv+JOg86NWQ==
X-Google-Smtp-Source: APiQypJulmPEpxcWX1jyXL8BWDiI54NDVxDpnmYWCjC6BTiL2RZDj0Ms+5KHcenqxHDwS47TFsCwyara8rfJrVk9c7U=
X-Received: by 2002:a17:906:49c7:: with SMTP id w7mr16307878ejv.29.1588615000212;
 Mon, 04 May 2020 10:56:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200502143555.543636-1-pasha.tatashin@soleen.com>
 <20200502143555.543636-2-pasha.tatashin@soleen.com> <20200504131500.5f6c8860@gandalf.local.home>
In-Reply-To: <20200504131500.5f6c8860@gandalf.local.home>
From:   Pavel Tatashin <pasha.tatashin@soleen.com>
Date:   Mon, 4 May 2020 13:56:04 -0400
Message-ID: <CA+CK2bBeBC1T_Bc2gskk90bJogOdg-RK1DHf4odsDj-ck_efyQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] printk: honor the max_reason field in kmsg_dumper
To:     Steven Rostedt <rostedt@goodmis.org>
Cc:     James Morris <jmorris@namei.org>, Sasha Levin <sashal@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Petr Mladek <pmladek@suse.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Kees Cook <keescook@chromium.org>, anton@enomsg.org,
        ccross@android.com, Tony Luck <tony.luck@intel.com>,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Hmm, I didn't realize that enums were allowed to have duplicates. That can
> usually screw up logic. I would recommend making that a define afterward.
>
> #define KMSG_DUMP_MAX KMSG_DUMP_POWEROFF
>
> As is done in other locations of the kernel.
>

Hi Steve,

Sure, I will change it to define.

Thank you,
Pasha
